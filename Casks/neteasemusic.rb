cask :v1 => 'neteasemusic' do
  version '1.4.0_418'
  sha256 'da5e545bbe213a7f073602519da29c3d4d68bb25de99804c4dd61dd6d02dc763'

  # 126.net is the official download host per the vendor homepage
  url "http://s1.music.126.net/download/osx/NeteaseMusic_#{version}_web.dmg"
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
