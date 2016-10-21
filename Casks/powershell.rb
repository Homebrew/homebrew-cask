cask 'powershell' do
  version '6.0.0-alpha.11'
  sha256 'fdbc1f8545e89514da5e74e0fb3bdf1df9267ac9c0a020e6a71d3c506ddd6082'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: '81a82e6fdee26ab5d676d088533b6774e4ad788577d031a9e72f34419900b119'
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
