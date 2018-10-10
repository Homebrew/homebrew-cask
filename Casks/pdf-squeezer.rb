cask 'pdf-squeezer' do
  version '3.9.1'
  sha256 '032d292505c9b106ed9198e74dc4795049a1e83b16c0e45312f5051ff626e7df'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
