cask 'dingtalk' do
  version '3.5.0'
  sha256 'cefb81f47489d3ed7bd2ed6144900b7a00aa32327a4f9149ea74f371f85c7ad6'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
