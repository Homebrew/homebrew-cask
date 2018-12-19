cask 'mongodb' do
  version '4.0.3-build.1'
  sha256 '581149d682ce6bf6573ce21069ae7599c86965e49028d9c1cd4a68f57c1477c9'

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
