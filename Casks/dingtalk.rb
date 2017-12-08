cask 'dingtalk' do
  version '4.0.201'
  sha256 '3518ed9caba3f41788aadb3accf8f6b4bfbe20a18bec02c40fa11c20bfe68ddc'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app 'DingTalk.app'
end
