cask 'dingtalk' do
  version '4.7.0.9'
  sha256 '03691ea8d05648bb2bc45270dc32180b330c20209eb734cffc7dbeb0fa9ffb31'

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
