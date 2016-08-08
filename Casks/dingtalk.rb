cask 'dingtalk' do
  version '1.13.1'
  sha256 '2630456faa3b99e5005d40b15f496abbb14e6f58a8e84b72f9c9f7146fb1e2a8'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
