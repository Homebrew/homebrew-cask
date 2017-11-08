cask 'cardhop' do
  version '1.0.2'
  sha256 '047082ca78af346c2aac62a4cdd96cc16a3c5e04fc4344d6dc350513787aff1c'

  url "http://cdn.flexibits.com/Cardhop_#{version}.zip"
  appcast 'https://flexibits.com/cardhop/appcast.php',
          checkpoint: '9da1775e9aef37ac95866f98f5046a477aac840ee68cfb9f7cb246f66aa18c50'
  name 'Cardhop'
  homepage 'https://flexibits.com/cardhop'

  auto_updates true

  app 'Cardhop.app'

  uninstall launchctl: 'com.flexibits.cardhop.mac.launcher',
            quit:      'com.flexibits.cardhop.mac'

  zap trash: '~/Library/Preferences/com.flexibits.cardhop.plist'
end
