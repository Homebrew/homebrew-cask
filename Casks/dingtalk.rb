cask 'dingtalk' do
  version '3.3.3'
  sha256 'a4a15536bccb5e1dbbfc542f47ab884f041ad3b69438c4b0c9a2fbdd1c06c9d4'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
