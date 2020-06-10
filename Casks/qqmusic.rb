cask 'qqmusic' do
  version '7.0.1.2'
  sha256 'b2a359eb9b65f8aac402d6af89135da92f14dfb86932729f87944d8a83440e01'

  url 'https://dldir1.qq.com/music/clntupate/mac/QQMusicMac_Mgr.dmg'
  name 'QQ音乐'
  homepage 'https://y.qq.com/'

  app 'QQMusic.app'

  uninstall quit: 'com.tencent.QQMusicMac'

  zap trash: [
               '~/Library/Application Support/com.tencent.QQMusicMac',
               '~/Library/Caches/com.tencent.QQMusicMac',
               '~/Library/Containers/com.tencent.QQMusicMac',
               '~/Library/Preferences/com.tencent.QQMusicMac.plist',
               '~/Library/Saved Application State/com.tencent.QQMusicMac.savedState',
             ]
end
