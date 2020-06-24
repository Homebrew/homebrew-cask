cask 'feishu' do
  version '3.26.2'
  sha256 '39f5a0ca7284a7d6f4a17c9ea24c93760d38ccc14a3a9e154f8c53898c910e49'

  # sf3-ttcdn-tos.pstatp.com/ was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Feishu-#{version}.dmg"
  appcast 'https://www.feishu.cn/api/downloads'
  name 'feishu'
  homepage 'https://www.feishu.cn/'

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Lark.app', target: 'Feishu.app'
end
