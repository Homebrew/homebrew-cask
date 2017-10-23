cask 'protonmail-bridge' do
  version :latest
  sha256 :no_check

  url 'https://protonmail.com/download/Bridge-Installer.dmg'
  name 'ProtonMail Brigde'
  homepage 'https://protonmail.com/bridge/'

  app 'ProtonMail Bridge.app'

  zap trash: [
               '~/Library/Application Support/protonmail',
               '~/Library/Caches/protonmail',
               '~/Library/Caches/ProtonMail\ Bridge',
               '~/Library/LaunchAgents/ProtonMail\ Bridge.plist',
             ]
end
