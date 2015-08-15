cask :v1 => 'qqmusic' do
  version '2.3'
  sha256 '6593590eb5b7fab34141283b0a893309ddec90cd3764c3a066499b487c2d33ff'

  url "http://dldir1.qq.com/music/clntupate/QQMusicForMacV#{version}.dmg"
  name 'QQ音乐'
  homepage 'http://y.qq.com'
  license :commercial

  app 'QQMusic.app'

  uninstall :quit => 'com.tencent.QQMusicMac'

  zap :delete => [
                  '~/Library/Caches/com.tencent.QQMusicMac',
                  '~/Library/Preferences/com.tencent.QQMusicMac.plist',
                  '~/Library/Saved Application State/com.tencent.QQMusicMac.savedState'
                 ]
end
