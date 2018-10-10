cask 'powershell' do
  version '6.1.0'
  sha256 'aa7bbd2c8286639fd26cffaf3e586bc08dbc6e67b554a6291fdedebd140bd07d'

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom'
  name 'PowerShell'
  homepage 'https://github.com/PowerShell/PowerShell'

  depends_on formula: 'openssl'
  depends_on macos: '>= :sierra'

  pkg "powershell-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.powershell'

  zap trash: [
               '~/.cache/powershell',
               '~/.config/PowerShell',
               '~/.local/share/powershell',
             ],
      rmdir: [
               '~/.cache',
               '~/.config',
               '~/.local/share',
               '~/.local',
             ]
end
