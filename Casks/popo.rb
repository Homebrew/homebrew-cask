cask 'popo' do
  version '3.0.5'
  sha256 '4d94f26a6fec8e953fc9a2e66772192f584a4bcbf7b7b64a6f0b72ecb9a80c47'

  url "http://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
  appcast 'http://popo.netease.com/history.html',
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
