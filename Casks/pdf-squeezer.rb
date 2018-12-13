cask 'pdf-squeezer' do
  version '3.9.3'
  sha256 '4053fdd9a250810f335c3a0e82a392a5934d3517a7d9e9d01f474ca226d882e1'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
