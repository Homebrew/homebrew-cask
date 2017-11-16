cask 'dingtalk' do
  version '3.5.6.1'
  sha256 'f3a6288e839a86b1863412029370fcc327fbe63a15be765de8b951c820bc53be'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
