cask 'cardhop' do
  version '1.1.3'
  sha256 '50c320d8024f92444a57e1e1f478aef886c1637361ec266eb26a7eba93e23095'

  url "http://cdn.flexibits.com/Cardhop_#{version}.zip"
  appcast 'https://flexibits.com/cardhop/appcast.php'
  name 'Cardhop'
  homepage 'https://flexibits.com/cardhop'

  auto_updates true

  app 'Cardhop.app'

  uninstall launchctl: 'com.flexibits.cardhop.mac.launcher',
            quit:      'com.flexibits.cardhop.mac'

  zap trash: [
               '~/Library/Preferences/com.flexibits.cardhop.mac.plist',
               '~/Library/Application Scripts/com.flexibits.cardhop.mac',
               '~/Library/Application Scripts/com.flexibits.cardhop.mac.launcher',
               '~/Library/Application Scripts/com.flexibits.cardhop.mac.BluetoothDialer',
               '~/Library/Containers/com.flexibits.cardhop.mac',
               '~/Library/Containers/com.flexibits.cardhop.mac.launcher',
               '~/Library/Containers/com.flexibits.cardhop.mac.BluetoothDialer',
             ]
end
