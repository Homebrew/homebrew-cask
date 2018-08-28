cask 'popo' do
  version '2.6.8,5653'
  sha256 'e3ce86e5575540a41528e6ae94b4197f34c248c94551ff71d108dcf088ee212a'

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores.before_comma}.dmg"
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
