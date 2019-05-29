cask 'pdf-squeezer' do
  version '3.10.3'
  sha256 '1bc08bab64ea3d9de61d3048f7007d3aba082fc80384463e409b0047d2371f2a'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
