cask 'dingtalk' do
  version '3.4.6.1'
  sha256 '983ce2c4d37973a8c3f342b5394cf944c0047e08594b6c1f934ef7f5aafb15a5'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
