cask 'dingtalk' do
  version '1.5.1'
  sha256 '64e8b7b294e5585cc63eebb5bb86c47388ba44498875894187352bb9f9f167ca'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'http://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
