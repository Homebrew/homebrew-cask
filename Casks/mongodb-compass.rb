cask 'mongodb-compass' do
  version '1.12.0'
  sha256 'e742474f0dcfc9cc2a8683e5e72ee5b3abe93edc5d0fe7371f554ea7d83afe18'

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
