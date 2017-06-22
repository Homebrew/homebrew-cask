cask 'neteasemusic' do
  version '1.5.6_566'
  sha256 'ac7b3196b16509186e4d434c5cbc63f036c26051d69b61969d810a00dfc725cc'

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
