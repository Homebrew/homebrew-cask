cask 'feishu' do
  version '3.9.4'
  sha256 'd0f283e07565c54b577e277c75c750c51ddbfc84c2a1fc08aa8e9b5a13c55c4e'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Feishu-#{version}.dmg"
  appcast 'https://www.feishu.cn/api/downloads'
  name 'feishu'
  homepage 'https://www.feishu.cn/'

  depends_on macos: '>= :mavericks'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Lark.app', target: 'Feishu.app'
end
