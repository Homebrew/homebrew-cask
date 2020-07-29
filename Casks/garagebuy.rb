cask 'garagebuy' do
  version '3.3.2'
  sha256 'f3a8d32189e8d6f5f051ad014ede279c10c67cbd1d9ccb4c223f9366b62b72fb'

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageBuy/Downloads.html'
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy/'

  depends_on macos: '>= :sierra'

  app 'GarageBuy.app'
end
