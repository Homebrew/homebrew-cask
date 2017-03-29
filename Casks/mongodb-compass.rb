cask 'mongodb-compass' do
  version '1.6.1'
  sha256 '406be840ea1962d8bbb5fc248f7ae432221bd12be8e2ed937d03603ea75f61a4'

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass.app'

  zap delete: [
                '~/Library/Application Support/MongoDB Compass',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mongodb.compass.sfl',
                '~/Library/Caches/MongoDB Compass/',
                '~/Library/Preferences/com.mongodb.compass.plist',
                '~/Library/Saved Application State/com.mongodb.compass.savedState',
              ]
end
