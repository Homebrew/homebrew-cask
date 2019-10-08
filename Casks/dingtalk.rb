cask 'dingtalk' do
  version '4.7.9.7'
  sha256 '80e7dbf857ebf1c6bf43ca075151dd583b0c6b270cf3854f0e662e85d677c772'

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
