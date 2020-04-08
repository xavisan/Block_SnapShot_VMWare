$maquina = New-Object VMware.Vim.VirtualMachineConfigSpec 
$maquina.extraConfig += New-Object VMware.Vim.OptionValue 
$maquina.extraConfig[0].key = "snapshot.maxSnapshots"
$maquina.extraConfig[0].value = 1

Get-VM VM01_name | %{$_.ExtensionData.ReconfigVM_Task($maquina)}
Get-VM VM02_name | %{$_.ExtensionData.ReconfigVM_Task($maquina)}
