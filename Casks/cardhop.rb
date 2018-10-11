cask 'cardhop' do
  version '1.1.5'
  sha256 '345ae2bd77ab95c459959bc9102ad93b344698b936726d8e94f7cac5a183044c'

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
