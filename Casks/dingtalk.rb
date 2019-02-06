cask 'dingtalk' do
  version '4.6.10.13'
  sha256 '65539435ac43f335a8cfcf80c47ccc584d328127d35dc43c3ef94572a28f1560'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
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
