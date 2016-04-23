cask 'dingtalk' do
  version '1.8.2'
  sha256 'd471acf63d2e505d9b5cb1141ff18688b9ff101a011401b5b4a09c1880f12858'

  # taobaocdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'http://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
