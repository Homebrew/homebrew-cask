cask 'popo' do
  version '3.3.1'
  sha256 '91ddb4b3b6b08ad3bde19bd9357e18953de64d7f548f61e8fef1440d13af837b'

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
  appcast 'http://popo.netease.com/',
          configuration: version.dots_to_underscores
  name 'NetEase POPO'
  homepage 'http://popo.netease.com/'

  app 'popo_mac.app'

  zap trash: [
               '~/Library/Application Support/Netease/Popo',
               '~/Library/Saved Application State/com.netease.game.popo.savedState',
               '~/Library/Preferences/com.netease.game.popo.plist',
               '~/Library/Caches/com.netease.game.popo',
             ]
end
