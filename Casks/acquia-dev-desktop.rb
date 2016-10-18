cask 'acquia-dev-desktop' do
  version '2-2015-11-22'
  sha256 'f874833d950e52a06acda5ba7cc93ba8d083728934c6f5f4fb741dc7b5424631'

  url "https://www.acquia.com/sites/default/files/downloads/dev-desktop/AcquiaDevDesktop-#{version}.dmg"
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
