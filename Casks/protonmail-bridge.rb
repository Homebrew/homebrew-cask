cask 'protonmail-bridge' do
  version '1.2.2'
  sha256 '99de8fa3edb4a82347bb5220d6a912b09b298122b5395753cdf47f9061e8bd17'

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
