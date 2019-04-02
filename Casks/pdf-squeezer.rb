cask 'pdf-squeezer' do
  version '3.10'
  sha256 '747498decdff62152ac24a27bf14b12172487f6bdf32618eeb467f1e2ae8e271'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
