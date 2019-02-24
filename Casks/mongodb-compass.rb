cask 'mongodb-compass' do
  version '1.16.4'
  sha256 '1b320a35621aff3307360d70e416210578fda7bbd6362fedf463dc602cd3912d'

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass.app'

  zap trash: [
               '~/Library/Application Support/MongoDB Compass',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.sfl*',
               '~/Library/Caches/MongoDB Compass/',
               '~/Library/Preferences/com.mongodb.compass.plist',
               '~/Library/Saved Application State/com.mongodb.compass.savedState',
             ]
end
