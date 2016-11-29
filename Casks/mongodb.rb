cask 'mongodb' do
  version '3.2.8-build.1'
  sha256 '54079eaad459c1910110f83c9ee160bc13fd87aa90fc27b6ae6d4dae292f5dfd'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '30d0c2fb36e0c5551d05614dea789cc6d5dacf8687c90c8474e229cbfaae295b'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
