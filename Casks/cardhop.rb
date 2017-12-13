cask 'cardhop' do
  version '1.0.4'
  sha256 '7fb7177d6d86bbdf918e225454bb8e9242e94c39bc08056f3a97724a9913542c'

  url "http://cdn.flexibits.com/Cardhop_#{version}.zip"
  appcast 'https://flexibits.com/cardhop/appcast.php',
          checkpoint: '10f66a6cdb3af048dc7da7159fa19a545ca628d774f7b1c3dc8e3d92139c9b87'
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
