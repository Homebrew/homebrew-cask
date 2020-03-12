cask 'protonmail-bridge' do
  version '1.2.5'
  sha256 '15e39f27a0e205d10a3990dd93282dad36f86df234a928b5837e1e4f3e0fe67f'

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
