cask 'mongodb-compass' do
  version '1.19.12'
  sha256 'b7ea35d287e933027dd67f9c3d5f28b706ac1bd31f36d80e2c65ba55db1ce97a'

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
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
