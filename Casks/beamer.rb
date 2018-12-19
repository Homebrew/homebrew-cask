cask 'beamer' do
  version '3.3.3'
  sha256 '6fca864df09a49f109cd61dd30135be3d4a421bbb4f378d59f533740b58e0d40'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml"
  name 'Beamer'
  homepage 'https://beamer-app.com/'

  app 'Beamer.app'
end
