cask 'dingtalk' do
  version '1.12.0'
  sha256 'ef38f0cd08dd88a9b4cc5946f5dae06457358d9bce3fbb1acba364e323b6062f'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'http://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
