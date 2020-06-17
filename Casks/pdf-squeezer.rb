cask 'pdf-squeezer' do
  version '4.1'
  sha256 'c9f1e1440e9982f0f54ec5ae81a9a80d8c276b4020dff5f3b25944f543361c38'

  url 'https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
