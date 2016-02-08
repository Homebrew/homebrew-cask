cask 'mongodb' do
  version '3.2.1-build.1454526168'
  sha256 'bbb15eac1f1271591306b09ac3a2cbc3cbfde053ad4cac53612562d9dbc9b4af'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: 'fbfc632998e400d3b5f718f06096584b78bc9f27dacc40984d6991cc21558d19'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
