cask 'cozy-drive' do
  version '3.10.2'
  sha256 '9d79a873347ca0784596c205d96bacbf525e049c584f2b4ce343a939fc6a1fee'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
