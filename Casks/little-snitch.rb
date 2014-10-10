class LittleSnitch < Cask
  version '3.4'
  sha256 'c474c9e65004d88af529365c21db46580e9a6c420dbc1106213ac20e1fdfb1cd'

  url "http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  license :unknown

  zap :delete => [
                  '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                  '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.user.xpl',
                 ]

  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
end
