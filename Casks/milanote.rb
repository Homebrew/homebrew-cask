cask 'milanote' do
  version '1.1.5'
  sha256 '0c718dd8c0738c76b556ffa7b45c0337b08ebf9607027799a5ffba1f2a96406e'

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
