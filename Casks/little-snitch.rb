cask 'little-snitch' do
  version '3.6.2'
  sha256 '5f97dca66673c5dab58056af7f7236ca587dddf4fed147b62b3eb6ca542012b2'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/'
  license :commercial

  installer manual: 'Little Snitch Installer.app'

  zap delete: [
                '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                '~/Library/Application Support/Little Snitch/configuration.xpl',
                '~/Library/Application Support/Little Snitch/configuration.user.xpl',
              ]
end
