cask 'mongodb-compass' do
  version '1.14.5'
  sha256 'e88c4aee4a7dbda8e35e748aadedfafe8d6c05e88e5fec4933288101df2da6f5'

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
