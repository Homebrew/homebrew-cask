cask 'mongodb' do
  version '3.6.4-build.1'
  sha256 '7d07dfb2fb5b387a6fcfac6b22d9e4c1d42dd1bca570e5d2af164185aeb93078'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap trash: [
               '~/Library/Caches/io.blimp.MongoDB',
               '~/Library/Preferences/io.blimp.MongoDB.plist',
             ]
end
