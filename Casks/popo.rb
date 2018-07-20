cask 'popo' do
  version '2.6.7'
  sha256 'f1235585fa37181c3e3741928281bdeebbd02a57dd39a3aa6073343ee7917b30'

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
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
