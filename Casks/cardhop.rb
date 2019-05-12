cask 'cardhop' do
  version '1.2.4'
  sha256 '5d6865cb77503d134fc2266c888b93cb925089cc2ba5d80b3d2003c10a916f4d'

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
