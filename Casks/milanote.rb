cask 'milanote' do
  version '1.3.1'
  sha256 '24237aede9686dad80c15ec966dfde8ca06a91c8e0acf5c7817c3ca0921b748b'

  # milanote-app-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg"
  appcast 'https://www.milanote.com/download-mac-app'
  name 'Milanote'
  homepage 'https://www.milanote.com/'

  app 'Milanote.app'

  zap trash: [
               '~/Library/Application Support/Milanote',
               '~/Library/Caches/com.milanote.app',
               '~/Library/Caches/com.milanote.app.ShipIt',
               '~/Library/Library/Logs/Milanote',
               '~/Library/Preferences/com.milanote.app.helper.plist',
               '~/Library/Preferences/com.milanote.app.plist',
             ]
end
