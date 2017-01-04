cask 'dingtalk' do
  version '3.3.2'
  sha256 '588618471217baf652c54f8d53fd0a5f52a43d71593ffe515e19b65f3f3d07f6'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
