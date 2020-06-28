cask 'feishu' do
  version '3.26.3'
  sha256 'ff19ae85b8eb66538bb0ba8616767b9fc3b04a72e8fcc4cda31e38154c7dffcd'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Feishu-#{version}.dmg"
  appcast 'https://www.feishu.cn/api/downloads'
  name 'feishu'
  homepage 'https://www.feishu.cn/'

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Lark.app', target: 'Feishu.app'
end
