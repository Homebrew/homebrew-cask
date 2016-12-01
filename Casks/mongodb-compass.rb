cask 'mongodb-compass' do
  version '1.5.0'
  sha256 '7fd1ac2d1feffc294441337dcd1f7c724a0a26cfd51b14be628ec98233b024aa'

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
