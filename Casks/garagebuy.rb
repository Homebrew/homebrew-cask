cask 'garagebuy' do
  version '3.3.4b3'
  sha256 '262511e8cab08d7e32d81e43a964cc2253468ddf4789318e7c1de2b10ddfaddf'

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageBuy/Downloads.html'
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy/'

  depends_on macos: '>= :sierra'

  app 'GarageBuy.app'
end
