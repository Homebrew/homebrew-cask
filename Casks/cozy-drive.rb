cask 'cozy-drive' do
  version '3.13.0'
  sha256 '70665c41a8d113cac9b8a3751169f4df65c045d0f6e8f3217b40255c0b4365b6'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
