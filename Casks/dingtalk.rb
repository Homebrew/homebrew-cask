cask 'dingtalk' do
  version '3.0.2'
  sha256 '7e1446a7833db51aaed84f9a0fb677fad763115c755250caea61aa6992da2c9f'

  # alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
