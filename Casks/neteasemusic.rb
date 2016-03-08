cask 'neteasemusic' do
  version '1.4.2_444'
  sha256 'cf05f5225ca91d5d7f0e1f0fe37e1e37c4c92963f8d5ee0ba71a3ad7727bbc59'

  # 126.net is the official download host per the vendor homepage
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
