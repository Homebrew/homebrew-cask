cask 'qqmusic' do
  version '5.0Build03'
  sha256 '7feecd3a290dd9277226e077a1270f79dad4db53049a69f0fa3c8fd8726e615a'

  url "https://dldir1.qq.com/music/clntupate/mac/QQMusicMac#{version}.dmg"
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
