cask 'protonmail-bridge' do
  version :latest
  sha256 :no_check

  url 'https://protonmail.com/download/Bridge-Installer.dmg'
  name 'ProtonMail Bridge'
  homepage 'https://protonmail.com/bridge/'

  app 'ProtonMail Bridge.app'

  uninstall launchctl: 'ProtonMail Bridge',
            quit:      'com.protonmail.bridge'

  zap delete: [
                '~/Library/Caches/protonmail',
                '~/Library/Caches/ProtonMail Bridge',
              ],
      trash:  '~/Library/Application Support/protonmail'
end
