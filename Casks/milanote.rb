cask 'milanote' do
  version '1.5.1'
  sha256 '101a5ad54a779fc94fdc3b274b025e8e4997cab6408ab979524231a3f2b1ceab'

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
