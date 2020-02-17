cask 'singlebox' do
  version '2.13.1'
  sha256 'e93f8d2f179d1a504ed05c31eb60a4200e28a42b540dda37f0da0007b183771d'

  # github.com/quanglam2807/singlebox/ was verified as official when first introduced to the cask
  url "https://github.com/quanglam2807/singlebox/releases/download/v#{version}/Singlebox-#{version}-mac.zip"
  appcast 'https://github.com/quanglam2807/singlebox/releases.atom'
  name 'Singlebox'
  homepage 'https://singleboxapp.com/'

  auto_updates true

  app 'Singlebox.app'

  zap trash: [
               '~/Library/Application Support/Singlebox',
               '~/Library/Caches/com.singlebox.app',
               '~/Library/Caches/com.singlebox.app.ShipIt',
               '~/Library/Preferences/com.singlebox.app.plist',
               '~/Library/Saved Application State/com.singlebox.app.savedState',
             ]
end
