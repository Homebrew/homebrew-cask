cask 'little-snitch' do
  version '3.6.3'
  sha256 'ea490f6ed187e2989a59706891527b9dce67d12d39d97f96777dc2474d2f0933'

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
