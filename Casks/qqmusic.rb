cask 'qqmusic' do
  version '4.0Build09'
  sha256 'dfe843f81ba7f4ddab54f06ce9121a45480dd12259b1e84849ab710eedfae520'

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
