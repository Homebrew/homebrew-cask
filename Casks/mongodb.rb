cask 'mongodb' do
  version '4.0.8-build.1'
  sha256 '38d60ce05de52aedf10bf4d686681db28731a7e90b9b88b7047036cd9bd0d67f'

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
