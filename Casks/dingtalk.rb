cask 'dingtalk' do
  version '4.6.36.4'
  sha256 '54e535d11f165523f0ee9472983fd2d5f32c7a6b4b19f29585f069888c6e9838'

  url "https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  appcast 'https://im.dingtalk.com/manifest/appcast_en.xml'
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  auto_updates true

  app 'DingTalk.app'

  uninstall quit: 'com.alibaba.DingTalkMac'

  zap trash: [
               '~/Library/Application Support/DingTalkMac',
               '~/Library/Caches/DingTalk',
               '~/Library/Caches/com.alibaba.DingTalkInstaller',
               '~/Library/Caches/com.alibaba.DingTalkMac',
               '~/Library/Preferences/com.dingtalk.mac.plist',
               '~/Library/Preferences/com.alibaba.DingTalkMac.plist',
               '~/Library/Preferences/com.alibaba.DingTalkInstaller.plist',
               '~/Library/Preferences/com.alibaba.DingTalk-Helper.plist',
               '~/Library/Saved Application State/com.alibaba.DingTalkMac.savedState',
               '~/Library/WebKit/com.alibaba.DingTalkMac',
             ]
end
