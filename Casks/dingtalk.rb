cask 'dingtalk' do
  version '4.5.5.5'
  sha256 '2108599e128697b998c4f2b04ae7d45f3f6277fbb2ebe1c1b8b4f214bf8303ee'

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
