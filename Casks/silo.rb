class Silo < Cask
  version '2.3.02'
  sha256 '7d84001382c3d12ad2f436fdb5572a60335a9e1dbac6505fd959fc776efaf365'

  url 'https://nevercenter.com/download/Install_Silo_2_3_02_mac.zip'
  homepage 'http://nevercenter.com/silo/'
  nested_container 'Install_Silo_2_3_02_mac.dmg'

  app 'Silo 2.3.app'
end
