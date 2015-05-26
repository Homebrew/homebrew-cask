cask :v1 => 'little-snitch' do
  version '3.5.2'
  sha256 'bf88a0fe00550367e86acc7d02d508a45c3c5623eb75daadce32ddf74e14bec8'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  name 'Little Snitch'
  homepage 'http://www.obdev.at/products/littlesnitch/'
  license :commercial

  installer :manual => 'Little Snitch Installer.app'

  zap :delete => [
                  '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                  '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.user.xpl',
                 ]
end
