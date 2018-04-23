cask 'mongodb' do
  version '3.6.3-build.4'
  sha256 'f343cd2b6e49bb143f922bfa142109baa700be66d77c2eedf3b54be8e36cf207'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: 'bbb549518f509ff113e5467cbd6a8ac493b98e04a46da929bf417ecc0a1c9c6e'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap trash: [
               '~/Library/Caches/io.blimp.MongoDB',
               '~/Library/Preferences/io.blimp.MongoDB.plist',
             ]
end
