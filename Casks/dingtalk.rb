cask 'dingtalk' do
  version '3.4.8.3'
  sha256 '550486b51fade83cccd8da03d8ab7e7d55259676698d30433c048929eaf62e40'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
