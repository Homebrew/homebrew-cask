cask 'feishu' do
  version '3.6.3'
  sha256 '8ea622f24938354ec95d79946b21b7f10c7bd36f7198b1290375631f6eaad537'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Feishu_#{version}.dmg"
  name 'feishu'
  homepage 'https://www.feishu.cn/'

  depends_on macos: '>= :mavericks'

  app 'Lark.app'
end
