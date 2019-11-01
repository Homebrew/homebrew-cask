cask 'protonmail-bridge' do
  version '1.2.3'
  sha256 '81a7d219b74ddd89d14604174bbc7aad1f767975b6cf783efe642eda8acd295d'

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
