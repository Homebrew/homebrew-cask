cask 'qqmusic' do
  version '3.1.1Build02'
  sha256 '1a08e970fc8f6b68eb7a4034615fb8fc16ae06758a6e8b09e82824f2c0814359'

  url "http://dldir1.qq.com/music/clntupate/mac/QQMusic#{version}.dmg"
  name 'QQ音乐'
  homepage 'https://y.qq.com'
  license :commercial

  app 'QQMusic.app'

  uninstall quit: 'com.tencent.QQMusicMac'

  zap delete: [
                '~/Library/Caches/com.tencent.QQMusicMac',
                '~/Library/Application Support/com.tencent.QQMusicMac',
                '~/Library/Preferences/com.tencent.QQMusicMac.plist',
                '~/Library/Saved Application State/com.tencent.QQMusicMac.savedState',
              ]
end
