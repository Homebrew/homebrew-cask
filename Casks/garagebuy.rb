cask 'garagebuy' do
  version '3.3.1'
  sha256 'a1e6f7f105655d1a773755c450a0a062aa5509407a3d5ed02fb5aa2756bdabe9'

  # iwascoding.de was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast 'https://www.iwascoding.com/GarageBuy/Downloads.html'
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy/'

  depends_on macos: '>= :sierra'

  app 'GarageBuy.app'
end
