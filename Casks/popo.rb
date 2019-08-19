cask 'popo' do
  version '3.0.0,6136'
  sha256 'c931a2c31f33e46698ea9d0b6615e4fc2ac10889132d942b345172d2d5833367'

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
