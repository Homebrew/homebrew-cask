cask 'cardhop' do
  version '1.0'
  sha256 '6cfc08288458e0aa48c58c316b36485fc8652f3e5c55a0e90eafc620ef6eaeb5'

  url "http://cdn.flexibits.com/Cardhop_#{version}.zip"
  appcast 'https://flexibits.com/cardhop/appcast.php',
          checkpoint: '3e5842a2d99ae9f27ee0ea047cf0fe11a61ad6b99dbc79b2ed813e7e35dae51c'
  name 'Cardhop'
  homepage 'https://flexibits.com/cardhop'

  auto_updates true

  app 'Cardhop.app'

  uninstall launchctl: 'com.flexibits.cardhop.mac.launcher',
            quit:      'com.flexibits.cardhop.mac'

  zap trash: '~/Library/Preferences/com.flexibits.cardhop.plist'
end
