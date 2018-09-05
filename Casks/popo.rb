cask 'popo' do
  version '2.6.9,5655'
  sha256 'f487a4148123a735850e6d616a64fc658615691216122e00a48fbc2dff7b071f'

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
