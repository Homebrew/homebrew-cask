cask 'cozy-drive' do
  version '3.9.0'
  sha256 '971c61e3363ee0d1173b9d9a71622ea92195bd56b280a28b278e8a65d51d2bac'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
