## update Test-PSCloudScriptGit.ps1 with VE version
Write-Host -ForegroundColor Cyan "Updating Test-PSCloudScriptGit.ps1"
$version = (get-childitem "$env:SystemDrive\Program Files\WindowsPowerShell\Modules\OSD\" | Select -Last 1).name
$modulepath = "$env:SystemDrive\Program Files\WindowsPowerShell\Modules\OSD\$version\Public"
remove-item "$modulepath\Test-PSCloudScriptGit.ps1" -Force
(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/ulriksbo/OSDCloud/main/Test-PSCloudScriptGit.ps1',"$modulepath\Test-PSCloudScriptGit.ps1")

