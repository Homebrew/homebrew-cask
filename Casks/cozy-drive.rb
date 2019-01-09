cask 'cozy-drive' do
  version '3.11.2'
  sha256 'b6edbe84f0b9e0aaa39b11fa706c7e7fcd862967909a6f9c3c619b404e63f9b9'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
