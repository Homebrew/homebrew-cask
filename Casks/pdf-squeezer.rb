cask 'pdf-squeezer' do
  version '3.10.1'
  sha256 '3c6c825e802051da2b48208beb42c71ab348cc3cea102f8e8fe4c850e4ef6032'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
