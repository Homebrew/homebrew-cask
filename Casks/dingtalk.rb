cask 'dingtalk' do
  version '4.2.9'
  sha256 '248dfb32734e386424a88f4d92ef79312e5f65e9de786409a2b55de4e57d0d82'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app 'DingTalk.app'

  zap trash: [
               '~/Library/Application Support/DingTalk',
               '~/Library/Caches/DingTalk',
               '~/Library/Preferences/com.dingtalk.mac.plist',
               '~/Library/Saved Application State/com.dingtalk.mac.savedState',
             ]
end
