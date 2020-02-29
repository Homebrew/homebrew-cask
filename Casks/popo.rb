cask 'popo' do
  version '3.2.2'
  sha256 'c3b160e71ced03a7f1d3683ee804de223c5df8e541d3ac5c04d12ae4f3d89f95'

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
