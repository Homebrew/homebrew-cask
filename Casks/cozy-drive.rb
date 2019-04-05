cask 'cozy-drive' do
  version '3.12.0'
  sha256 '17b67857a090f60292a283c04e3aa8bea58902f5453fd45dc6ac95a990aa1321'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
