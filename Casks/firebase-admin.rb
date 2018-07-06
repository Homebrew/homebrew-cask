cask 'firebase-admin' do
  version '1.0.1'
  sha256 'b1e568815d182cd2d38801ef8d1b48e1ba44c4f3f3d3dc3084827ea19f60b64c'

  url "https://firebaseadmin.com/downloads/#{version}/firebase-admin-mac-#{version}.dmg"
  name 'Firebase Admin'
  homepage 'https://firebaseadmin.com/'

  app 'firebase-admin.app'

  zap trash: [
               '~/Library/Application Support/firebase-admin',
               '~/Library/Preferences/com.firebaseadmin.firebase-admin.helper.plist',
               '~/Library/Preferences/com.firebaseadmin.firebase-admin.plist',
             ]
end
