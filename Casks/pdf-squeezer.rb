cask 'pdf-squeezer' do
  version '3.10.4'
  sha256 'b6b20620491bbb5e50299b5536dd1f4a3ba155767ddbbd658fd87ab616a5cdbc'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
