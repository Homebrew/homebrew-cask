cask 'neteasemusic' do
  version '1.4.5_488'
  sha256 '76146aaa091428ae79429b820b843fcce9163335e1ba40833e10e8d0a5d580ce'

  # s1.music.126.net was verified as official when first introduced to the cask
  url "http://s1.music.126.net/download/osx/NeteaseMusic_#{version}_web.dmg"
  name 'NetEase cloud music'
  name '网易云音乐'
  homepage 'https://music.163.com/#/download'

  app 'NeteaseMusic.app'

  uninstall quit: 'com.netease.163music'

  zap delete: [
                '~/Library/Caches/com.netease.163music',
                '~/Library/Containers/com.netease.163music',
                '~/Library/Preferences/com.netease.163music.plist',
                '~/Library/Saved Application State/com.netease.163music.savedState',
              ]
end
