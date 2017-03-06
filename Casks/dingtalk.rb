cask 'dingtalk' do
  version '3.4.2'
  sha256 '75124c57e17b29d4ac111cda814ffa895be567268cde1e35d8d6483c110c601f'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
