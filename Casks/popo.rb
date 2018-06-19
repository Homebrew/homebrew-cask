cask 'popo' do
  version '2_6_5,5505'
  sha256 '9452e674c585076a99755e44ca682e17ea179db48bd471af433c809dfb20dc45'

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.before_comma}.dmg"
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
