cask :v1 => 'neteasemusic' do
  version '1.3.1'
  sha256 '1a850e6c624d05e72d25caf6d449613713294ffd5fe4ddad4287684118a10fd6'

  # 126.net is the official download host per the vendor homepage
  url "http://s1.music.126.net/download/osx/NeteaseMusic_#{version}_366_web.dmg"
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
