cask 'qq' do
  version '6.6.5'
  sha256 'f9c81cbc54c61bd1bb6a3aa7c9de82b52766b2cad0b15d02acf8b914535074c1'

  url "https://dldir1.qq.com/qqfile/QQforMac/QQ_#{version}.dmg"
  appcast 'https://im.qq.com/proxy/domain/qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/1373/config1.js'
  name 'QQ'
  homepage 'https://im.qq.com/macqq/'

  app 'QQ.app'

  uninstall quit: 'com.tencent.qq'

  zap trash: [
               '~/Library/Application Scripts/FN2V63AD2J.com.tencent.ScreenCapture2',
               '~/Library/Application Scripts/FN2V63AD2J.com.tencent.localserver2',
               '~/Library/Application Scripts/com.tencent.qq',
               '~/Library/Caches/com.tencent.qq',
               '~/Library/Containers/FN2V63AD2J.com.tencent.ScreenCapture2',
               '~/Library/Containers/FN2V63AD2J.com.tencent.localserver2',
               '~/Library/Containers/com.tencent.qq',
               '~/Library/Group Containers/FN2V63AD2J.com.tencent',
               '~/Library/Preferences/com.tencent.qq.plist',
               '~/Library/Saved Application State/com.tencent.qq.savedState',
               '~/Library/WebKit/com.tencent.qq',
             ]
end
