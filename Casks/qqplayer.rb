cask 'qqplayer' do
  version '1.0.4.278'

  sha256 'a60a9115dcbe197ce62a3e9344408b0d1b4a4494b2c9f65e2c44eef5ae9ef7d2'

  url "https://dldir1.qq.com/qqyy/mac/QQPlayer#{version}.dmg"

  appcast 'https://player.qq.com/'

  name 'QQ影音'

  homepage 'https://player.qq.com/'

  app 'QQPlayerMac.app'

  uninstall quit: 'com.tencent.qqplayermac'

  zap trash [
               '~/Library/Application Support/com.tencent.qqplayermac',
               '~/Library/Caches/com.tencent.qqplayermac',
               '~/Library/Preferences/com.tencent.qqplayermac.plist',
               '~/Library/Saved Application State/com.tencent.qqpplayermac.savedState',
               '~/Library/Containers/com.tencent.qqplayermac',
             ]
end
