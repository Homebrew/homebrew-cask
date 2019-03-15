cask 'milanote' do
  version '1.1.9'
  sha256 '139917ecdc9f33e2eeb63499b7dec590021bb4cf6ace922401753e5a10a1c22b'

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
