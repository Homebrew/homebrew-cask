cask 'dingtalk' do
  version '1.11.0'
  sha256 '6b06347fef4ee9520630e30cfaa996895d7a4c8b7559244088a9753f0cafb705'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'http://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
