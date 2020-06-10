cask 'feishu' do
  version '3.24.9'
  sha256 '74fd36169e6672adf87d0040b3c976bc8e65c3ca4e6ec2eeb2e4534aa470a2f7'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Feishu-#{version}.dmg"
  appcast 'https://www.feishu.cn/api/downloads'
  name 'feishu'
  homepage 'https://www.feishu.cn/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Lark.app', target: 'Feishu.app'
end
