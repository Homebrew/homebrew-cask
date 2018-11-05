cask 'cozy-drive' do
  version '3.10.1'
  sha256 'a5224f834f3251bad938b1ca84115baad2c600b82ea78ce543e355bfac5dd520'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
