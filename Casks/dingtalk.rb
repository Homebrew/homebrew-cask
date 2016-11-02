cask 'dingtalk' do
  version '3.1.2'
  sha256 '89062039007a218d67466f4388988e721240e8d577b32426f9dc7add2ecaf8e0'

  # alicdn.com/dingtalk-desktop was verified as official when first introduced to the cask
  url "https://download.alicdn.com/dingtalk-desktop/Release/install/DingTalk_v#{version}.dmg"
  name 'DingTalk'
  name '钉钉'
  homepage 'https://www.dingtalk.com/'

  app '钉钉.app'
end
