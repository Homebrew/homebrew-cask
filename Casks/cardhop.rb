cask 'cardhop' do
  version '1.0.1'
  sha256 '27a8a9cccd6063c1637ab3ce33a3046bbbe4d2a9bcbbc48a0e802f007f0ed4b3'

  url "http://cdn.flexibits.com/Cardhop_#{version}.zip"
  appcast 'https://flexibits.com/cardhop/appcast.php',
          checkpoint: '9c44d66cba244033acf635818bdbdf734ec8016c26654520203d13f40b763747'
  name 'Cardhop'
  homepage 'https://flexibits.com/cardhop'

  auto_updates true

  app 'Cardhop.app'

  uninstall launchctl: 'com.flexibits.cardhop.mac.launcher',
            quit:      'com.flexibits.cardhop.mac'

  zap trash: '~/Library/Preferences/com.flexibits.cardhop.plist'
end
