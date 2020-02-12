cask 'feishu' do
  version '3.17.3'
  sha256 '8f5419e7e2be283ac60d8f98276a669e6422be462d7b10b24905739dec0566b9'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Feishu-#{version}.dmg"
  appcast 'https://www.feishu.cn/api/downloads'
  name 'feishu'
  homepage 'https://www.feishu.cn/'

  depends_on macos: '>= :mavericks'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Lark.app', target: 'Feishu.app'
end
