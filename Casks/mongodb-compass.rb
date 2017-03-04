cask 'mongodb-compass' do
  version '1.5.1'
  sha256 '032ec1d61a6753cca46d0ce4d4e842820f119bf524dfcbce281320beda258545'

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
