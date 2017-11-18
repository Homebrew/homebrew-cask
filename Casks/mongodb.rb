cask 'mongodb' do
  version '3.4.4-build.1'
  sha256 'f302e4329b9dab24b389cb53d603bdc27abf8c5b0701da96a8878c8289a5d54a'

  # github.com/gcollazo/mongodbapp was verified as official when first introduced to the cask
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: 'd402fc3ceb29eccdefc77ae01c7139ef4885e0000bbd7cbaabdfb5784344af02'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'

  app 'MongoDB.app'

  zap trash: [
               '~/Library/Caches/io.blimp.MongoDB',
               '~/Library/Preferences/io.blimp.MongoDB.plist',
             ]
end
