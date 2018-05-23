cask 'qqmusic' do
  version :latest
  sha256 :no_check

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
