cask 'dingtalk' do
  version '1.6.2'
  sha256 '6012119cf6304affe21d25ee5a5786903f7f492792f3b8bf5e41addcaa6932c1'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'http://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
