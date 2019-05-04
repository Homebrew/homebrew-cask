cask 'garagebuy' do
  version '3.3'
  sha256 '57409fe84cc308fd78fe01101939bd517641e57454bf757a07b47950ce5fdcca'

  # iwascoding.de was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy/'

  app 'GarageBuy.app'
end
