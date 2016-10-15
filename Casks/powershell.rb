cask 'powershell' do
  version '6.0.0-alpha.10'
  sha256 '01a2b1ea27b3ee03ebd92e10d5106f0a6df912e1d5586feeb4a8b57faba11c00'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '839967733ed3b1157f9767499e18fcdb5dffb68e3b4a551197a16916bc0f5f74'
  name 'PowerShell'
  homepage 'https://msdn.microsoft.com/powershell'

  pkg "powershell-#{version}.pkg"

  uninstall pkgutil: 'powershell'

  zap delete: [
                '~/.cache/powershell',
                '~/.config/PowerShell',
                '~/.local/share/powershell',
              ],
      rmdir:  [
                '~/.cache',
                '~/.config',
                '~/.local/share',
                '~/.local',
              ]
end
