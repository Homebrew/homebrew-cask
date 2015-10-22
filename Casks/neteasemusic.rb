cask :v1 => 'neteasemusic' do
  version '1.4.0'
  sha256 'e617ccc626c2275638ee731af0dcfd955b327bb581b5b8b1caa91f69c055e3e1'

  # 126.net is the official download host per the vendor homepage
  url "http://s1.music.126.net/download/osx/NeteaseMusic_#{version}_392_web.dmg"
  name '网易云音乐'
  name 'NetEase cloud music'
  homepage 'http://music.163.com/#/download'
  license :gratis

  app 'NeteaseMusic.app'

  uninstall :quit => 'com.netease.163music'

  zap :delete => [
                  '~/Library/Caches/com.netease.163music',
                  '~/Library/Containers/com.netease.163music',
                  '~/Library/Preferences/com.netease.163music.plist',
                  '~/Library/Saved Application State/com.netease.163music.savedState'
                 ]
end
