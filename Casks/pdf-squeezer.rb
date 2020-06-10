cask 'pdf-squeezer' do
  version '4.0.2'
  sha256 'd8b0ad35f63e5f8aa1017342c6b02b3652057c3a4c49143cf0a2d4ac52d0a12f'

  url 'https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://www.witt-software.com/downloads/pdfsqueezer/pdfsq4-appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
