cask 'dingtalk' do
  version '1.15.1'
  sha256 '12bbec088f6783f7927ea3e2cb0c1f761b66268a2e19ca5a691593217987a5c0'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
