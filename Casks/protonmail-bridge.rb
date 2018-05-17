cask 'protonmail-bridge' do
  version '1.0.4'
  sha256 'b91dd59732c1cbc708ce9040f3268656fbb7bb5c81f7bd5c2ced25926a9c1861'

  url 'https://protonmail.com/download/Bridge-Installer.dmg'
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
