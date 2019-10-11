cask 'popo' do
  version '3.0.4'
  sha256 '039df27d52e9b9910991aa218859a09255f56a0098fa648a8e97a0a9ea607adb'

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
