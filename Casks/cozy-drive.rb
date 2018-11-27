cask 'cozy-drive' do
  version '3.10.4'
  sha256 '65bed44bea1802dcbd5a039459bdd1b9dc817b90f9610c0ac02d37df4aa057ba'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
