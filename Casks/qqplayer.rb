cask 'qqplayer' do
  version '1.1.0.1202'
  sha256 '5f62bdcf90ab95a25370ecfa7ca980cdb80369829ca0d258202554158fda9493'

  url "https://dldir1.qq.com/qqyy/mac/QQPlayer#{version}.dmg"
  appcast 'https://player.qq.com/'
  name 'QQ影音'
  homepage 'https://player.qq.com/'

  app 'QQPlayerMac.app'

  uninstall quit: 'com.tencent.qqplayermac'

  zap trash: [
               '~/Library/Application Support/com.tencent.qqplayermac',
               '~/Library/Caches/com.tencent.qqplayermac',
               '~/Library/Preferences/com.tencent.qqplayermac.plist',
               '~/Library/Saved Application State/com.tencent.qqpplayermac.savedState',
               '~/Library/Containers/com.tencent.qqplayermac',
             ]
end
