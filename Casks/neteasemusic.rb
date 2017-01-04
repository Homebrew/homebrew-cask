cask 'neteasemusic' do
  version '1.5.1_530'
  sha256 '3591e8022aa9b7f186a0e2bbfcc6870cb22344b0c3c22283c358b0ecc3d5bf6f'

  # s1.music.126.net was verified as official when first introduced to the cask
  url "http://s1.music.126.net/download/osx/NeteaseMusic_#{version}_web.dmg"
  name 'NetEase cloud music'
  name '网易云音乐'
  homepage 'http://music.163.com/#/download'

  app 'NeteaseMusic.app'

  uninstall quit: 'com.netease.163music'

  zap delete: [
                '~/Library/Caches/com.netease.163music',
                '~/Library/Containers/com.netease.163music',
                '~/Library/Cookies/com.netease.163music.binarycookies',
                '~/Library/Preferences/com.netease.163music.plist',
                '~/Library/Saved Application State/com.netease.163music.savedState',
              ]
end
