cask 'popo' do
  version '3.4.0'
  sha256 'c844e2f664857f06399c0d7c958156f106807f790875117228010b6ec324f472'

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
