cask 'popo' do
  version '2.6.7'
  sha256 'a24c516110a1aafc329e909f4e566cb6d1674ef4724649d0ac750b6ce691cd7f'

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
