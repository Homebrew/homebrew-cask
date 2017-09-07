cask 'dingtalk' do
  version '3.5.3.3'
  sha256 'e67470adaf3358caac246a364e8d612564d247eca6efc9d60ad4d0f55fc0dffb'

  # download.alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/mac_dmg/Release/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
