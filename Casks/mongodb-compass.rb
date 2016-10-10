cask 'mongodb-compass' do
  version '1.3.0'
  sha256 'd0cc107e1cb3b60022d453699dc2074b623cc3eb03a8729ac784cfca319f606c'

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
