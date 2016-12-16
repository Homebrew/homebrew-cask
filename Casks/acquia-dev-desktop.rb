cask 'acquia-dev-desktop' do
  version '2-2016-08-11'
  sha256 '501ac0e0646905f39314d5f1404733b96e990b9c2e1b786186371bca89fa8d83'

  url "https://www.acquia.com/sites/default/files/downloads/dev-desktop/AcquiaDevDesktop-#{version}.dmg"
  appcast 'https://dev.acquia.com/downloads/releases/devdesktop',
          checkpoint: 'cf9cfa9ca978cf2fe9c721344b58a906f078b6fd8c9ecfb8cf0c2a2c69c7c1e9'
  name 'Acquia Dev Desktop'
  homepage 'https://www.acquia.com/products-services/dev-desktop'

  installer script: 'Acquia Dev Desktop Installer.app/Contents/MacOS/installbuilder.sh',
            args:   ['--mode', 'unattended', '--unattendedmodeui', 'none'],
            sudo:   true

  uninstall script: {
                      executable: '/Applications/DevDesktop/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended', '--unattendedmodeui', 'none'],
                      sudo:       true,
                    }
end
