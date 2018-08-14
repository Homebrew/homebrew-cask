cask 'dingtalk' do
  version '4.5.5'
  sha256 '3a1d8e4ab854ee7ff076e24e8e4e25e27b21b94e5f18f330870511160908c5c5'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  appcast 'https://im.dingtalk.com/manifest/appcast_en.xml'
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  auto_updates true

  app 'DingTalk.app'

  zap trash: [
               '~/Library/Application Support/DingTalk',
               '~/Library/Caches/DingTalk',
               '~/Library/Preferences/com.dingtalk.mac.plist',
               '~/Library/Saved Application State/com.dingtalk.mac.savedState',
             ]
end
