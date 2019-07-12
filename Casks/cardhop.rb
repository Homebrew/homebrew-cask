cask 'cardhop' do
  version '1.3.1'
  sha256 'da678697cf202e66112a56256aaaba376e5a1406fe430a07e19ea3cb7fdbc878'

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
