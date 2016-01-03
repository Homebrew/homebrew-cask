cask 'qqmusic' do
  version '3.1Build12'
  sha256 '0622dd0772372d17ac8b40fa9ab1eb975645b61bedf77c5f29f03336b345993e'

  url "http://dldir1.qq.com/music/clntupate/mac/QQMusic#{version}.dmg"
  name 'QQ音乐'
  homepage 'https://y.qq.com'
  license :commercial

  app 'QQMusic.app'

  uninstall :quit => 'com.tencent.QQMusicMac'

  zap :delete => [
                   '~/Library/Caches/com.tencent.QQMusicMac',
                   '~/Library/Application Support/com.tencent.QQMusicMac',
                   '~/Library/Preferences/com.tencent.QQMusicMac.plist',
                   '~/Library/Saved Application State/com.tencent.QQMusicMac.savedState',
                 ]
end
