cask 'powershell' do
  version '6.0.0-alpha.10'
  sha256 '01a2b1ea27b3ee03ebd92e10d5106f0a6df912e1d5586feeb4a8b57faba11c00'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '11d86f299b326db2ca34aa771a5576da5438c28d30dbcba22c85878bf57298de'
  name 'PowerShell'
  homepage 'https://msdn.microsoft.com/powershell'
  license :oss

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
