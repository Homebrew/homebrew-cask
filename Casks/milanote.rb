cask 'milanote' do
  version '1.0.37'
  sha256 'b7486de2740ac6813d210cb69be6939ceb30be610cfc94db6c429f903fdc7a4d'

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
