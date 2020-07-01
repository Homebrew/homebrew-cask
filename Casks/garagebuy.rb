cask 'garagebuy' do
  version '3.3.5'
  sha256 '7b791de08d40bae1d7e5f32233baee414fb6ff7eb91886951789e6225b8a1328'

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageBuy/Downloads.html'
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy/'

  depends_on macos: '>= :sierra'

  app 'GarageBuy.app'
end
