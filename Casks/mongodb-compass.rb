cask 'mongodb-compass' do
  version '1.12.3'
  sha256 '44a98463a064cc2bddee3b24aa90924536fe2d18baf7da5073d4c26ead4ed436'

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
