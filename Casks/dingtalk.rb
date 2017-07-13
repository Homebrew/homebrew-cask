cask 'dingtalk' do
  version '3.5.1.4'
  sha256 'da85811aeee7fe629ada641c62b08b041aadc3e30f48b9a917e93cc7ab938e6e'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
