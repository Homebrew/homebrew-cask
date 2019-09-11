cask 'popo' do
  version '3.0.3,6177'
  sha256 '4267c77a0132ad0db0bda33cc571f7a1706f7f210f97a76003f249142ae7626e'

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores.before_comma}.dmg"
  appcast 'http://popo.netease.com/'
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
