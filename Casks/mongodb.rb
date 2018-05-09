cask 'mongodb' do
  version '3.6.4-build.1'
  sha256 '7d07dfb2fb5b387a6fcfac6b22d9e4c1d42dd1bca570e5d2af164185aeb93078'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '0094765cb54ed1ba45a0a457175f01830ba99d02d947ba0a8455a8433b90241f'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap trash: [
               '~/Library/Caches/io.blimp.MongoDB',
               '~/Library/Preferences/io.blimp.MongoDB.plist',
             ]
end
