cask 'garagebuy' do
  version '3.3.4'
  sha256 'e95a7b4a55b8389fde0ff13e1ec5cac88d9a15850365b3ba5cf5275f7191338e'

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageBuy/Downloads.html'
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy/'

  depends_on macos: '>= :sierra'

  app 'GarageBuy.app'
end
