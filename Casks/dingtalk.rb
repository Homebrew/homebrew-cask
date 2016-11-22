cask 'dingtalk' do
  version '3.2.0'
  sha256 '059e2132c1e21ee9c4c6a15918819062f9f879b755be4f34102177d19da2e01d'

  # alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
