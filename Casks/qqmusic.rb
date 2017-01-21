cask 'qqmusic' do
  version '4.2.3Build02'
  sha256 '772a112b5425c035fb69e26c43f9a59a38c46f38e8d5ee536bcf88051d7b5f67'

  url "http://dldir1.qq.com/music/clntupate/mac/QQMusic#{version}.dmg"
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
