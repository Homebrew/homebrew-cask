cask 'protonmail-bridge' do
  version '1.2.1'
  sha256 '5c1299749f9801b71727720e9d090a8c19ef97b7600a6e69bb02ab1a0a28f823'

  url 'https://protonmail.com/download/Bridge-Installer.dmg'
  appcast 'https://protonmail.com/download/current_version_darwin.json'
  name 'ProtonMail Bridge'
  homepage 'https://protonmail.com/bridge/'

  app 'ProtonMail Bridge.app'

  uninstall launchctl: 'ProtonMail Bridge',
            quit:      'com.protonmail.bridge'

  zap trash: [
               '~/Library/Application Support/protonmail',
               '~/Library/Caches/protonmail',
               '~/Library/Caches/ProtonMail Bridge',
             ]
end
