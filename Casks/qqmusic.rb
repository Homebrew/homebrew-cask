cask 'qqmusic' do
  version '5.1.0.5'
  sha256 'f80d206a16b0426118b1dd290e0c88ae297eae196f47c9574440e7ae354a153d'

  url 'https://dldir1.qq.com/music/clntupate/mac/QQMusicMac_Mgr.dmg'
  name 'QQ音乐'
  homepage 'https://y.qq.com/'

  app 'QQMusic.app'

  uninstall quit: 'com.tencent.QQMusicMac'

  zap delete: [
                '~/Library/Application Support/com.tencent.QQMusicMac',
                '~/Library/Caches/com.tencent.QQMusicMac',
                '~/Library/Containers/com.tencent.QQMusicMac',
                '~/Library/Preferences/com.tencent.QQMusicMac.plist',
                '~/Library/Saved Application State/com.tencent.QQMusicMac.savedState',
              ]
end
