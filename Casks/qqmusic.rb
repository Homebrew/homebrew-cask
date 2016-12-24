cask 'qqmusic' do
  version '4.2.2Build01'
  sha256 'f833e423092a8f39d74d9ab49b8dc7dc51919c51a998c3eca498c642734a49b0'

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
