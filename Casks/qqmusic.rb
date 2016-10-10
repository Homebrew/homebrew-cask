cask 'qqmusic' do
  version '4.1.1Build03'
  sha256 '428d339d2b5d9efd226c4784c796cf6acf9428639282e0da4617cd7393115712'

  url "http://dldir1.qq.com/music/clntupate/mac/QQMusic#{version}.dmg"
  name 'QQ音乐'
  homepage 'https://y.qq.com'

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
