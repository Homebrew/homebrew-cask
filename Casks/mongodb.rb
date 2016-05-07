cask 'mongodb' do
  version '3.2.6-build.1'
  sha256 '48aed74f44c6e944d4e6ff31caf3cae6a14f98dddfea81f1dde3bded4c9894a7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '2bfb9297f1522431e452c3cc6fee16874506d2cdfcff8a1379c8742d3d3a4c15'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
