cask 'beamer' do
  version '3.3.2'
  sha256 'da58fa737a303f9d3bbe3885faae77c41678d94bb776f292fc6a8206f6d2f4bb'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml"
  name 'Beamer'
  homepage 'https://beamer-app.com/'

  app 'Beamer.app'
end
