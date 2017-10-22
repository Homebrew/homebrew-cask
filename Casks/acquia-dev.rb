cask 'acquia-dev' do
  version '2-2017-02-01'
  sha256 'b6f3af47241028b28d32ab494887095a51bacd7b766f4e3181993ecc2948febc'

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
