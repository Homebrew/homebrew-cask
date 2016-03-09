cask 'mongodb' do
  version '3.2.3-build.1'
  sha256 '2576a265fb5dffeb37e6cbeffdff8ea1f2eb0145b3f842b4e330d3550ac1a21a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: 'e724dadadfbee71e640e8855b0ffc41af5ebc439b818ed6d18907c3dd565569d'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
