cask 'popo' do
  version '3.3.8'
  sha256 '88551bab37738f6e49e67ef3baba0ed5bb9a3df5763108e3af23363bfb6d583c'

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
  appcast 'http://popo.netease.com/',
          must_contain: version.dots_to_underscores
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
