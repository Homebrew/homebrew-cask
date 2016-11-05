cask 'beamer' do
  version '3.1.2'
  sha256 '3190c7e4e6902a1a9a2d36227c9265a17d946bb9b7acd62517af7b5ec33266b0'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml",
          checkpoint: 'efc534002867fa76b4e190e0614f7d4b3e35fcd27a33814716309bf6d3477f7d'
  name 'Beamer'
  homepage 'https://beamer-app.com/'

  app 'Beamer.app'
end
