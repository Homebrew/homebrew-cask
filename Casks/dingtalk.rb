cask 'dingtalk' do
  version '3.0.1'
  sha256 '770205d6af3e46a9ac9746dcda645d8125cd1b275c7c759bcc11451ecf8828e2'

  # alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'
  license :commercial

  app '钉钉.app'
end
