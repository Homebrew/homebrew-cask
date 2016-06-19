cask 'neteasemusic' do
  version '1.4.4_470'
  sha256 'a6608fc78c89e82b030e3b1e779e2782cb3d84bc73db6bb1f5e04e5c70f418cc'

  # s1.music.126.net was verified as official when first introduced to the cask
  url "http://s1.music.126.net/download/osx/NeteaseMusic_#{version}_web.dmg"
  name 'NetEase cloud music'
  name '网易云音乐'
  homepage 'http://music.163.com/#/download'
  license :gratis

  app 'NeteaseMusic.app'

  uninstall quit: 'com.netease.163music'

  zap delete: [
                '~/Library/Caches/com.netease.163music',
                '~/Library/Containers/com.netease.163music',
                '~/Library/Preferences/com.netease.163music.plist',
                '~/Library/Saved Application State/com.netease.163music.savedState',
              ]
end
