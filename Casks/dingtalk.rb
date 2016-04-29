cask 'dingtalk' do
  version '1.9.0'
  sha256 'b22b24178a82710ddd552b12a55c5762c06df101ab34dbc3ff58f87923964b3a'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'http://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
