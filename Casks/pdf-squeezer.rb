cask 'pdf-squeezer' do
  version '3.10.5'
  sha256 '557e05b72b98b7bc644c025504dc749d8ba4add935a6fe47bbfb1bc4d9c402af'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
