cask 'cozy-drive' do
  version '3.11.0'
  sha256 'c8738655317d4480b4cd2b292ea1c2d64c95cd4185cc1bded0d573e2fdbfb250'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
