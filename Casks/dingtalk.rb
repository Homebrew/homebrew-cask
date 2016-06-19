cask 'dingtalk' do
  version '1.10.0'
  sha256 '7baf1518293984fb6052ad578ab50ad00d40773a28eb6510bafc388849253531'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'http://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
