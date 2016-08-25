cask 'powershell' do
  version '6.0.0-alpha.9'
  sha256 'de1f9ea55405efc681d845b1209e13f3057567841541822b60704d383c959574'

  # github.com/PowerShell/PowerShell was verified as official when first introduced to the cask
  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}.pkg"
  appcast 'https://github.com/PowerShell/PowerShell/releases.atom',
          checkpoint: 'b45a23c73f4f7490a6dae6e3ffaf6baab83483fddc144a0d77f2dded4979b5ba'
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
