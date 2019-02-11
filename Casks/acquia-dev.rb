cask 'acquia-dev' do
  version '2-2018-09-20'
  sha256 'e578709869d32d60d21e9fba7e2c20ffdd574ebc2b3503a6675e2b047298bf8a'

  url "https://www.acquia.com/sites/default/files/downloads/dev-desktop/AcquiaDevDesktop-#{version}.dmg"
  name 'Acquia Dev Desktop'
  homepage 'https://www.acquia.com/products-services/dev-desktop'

  installer script: {
                      executable: 'Acquia Dev Desktop Installer.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended', '--unattendedmodeui', 'none'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/DevDesktop/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended', '--unattendedmodeui', 'none'],
                      sudo:       true,
                    }
end
