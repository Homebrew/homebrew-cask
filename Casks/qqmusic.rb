cask :v1 => 'qqmusic' do
  version '3.0Build09'
  sha256 'd719411af642f16a78e3f20eb608bd472694590ef34487f25e937103a2c0c72a'

  url "http://dldir1.qq.com/music/clntupate/QQMusicMac#{version}.dmg"
  name 'QQ音乐'
  homepage 'http://y.qq.com'
  license :commercial

  app 'QQMusic.app'

  uninstall :quit => 'com.tencent.QQMusicMac'

  zap :delete => [
                  '~/Library/Caches/com.tencent.QQMusicMac',
                  '~/Library/Application Support/com.tencent.QQMusicMac',
                  '~/Library/Preferences/com.tencent.QQMusicMac.plist',
                  '~/Library/Saved Application State/com.tencent.QQMusicMac.savedState'
                 ]
end
