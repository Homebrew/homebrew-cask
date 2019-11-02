cask 'protonmail-bridge' do
  version '1.2.3'
  sha256 '74224f73fa6de39598da44d91cd52c99adc5682ec6e4b6670bbe7c521a7cb7eb'

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
