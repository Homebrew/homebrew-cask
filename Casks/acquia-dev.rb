cask 'acquia-dev' do
  version '2-2019-02-08'
  sha256 '12437e6f6270d695ef3efbf391ae9a45eeb0cb9e2381bcf946f6717ec03864a9'

  url "https://dev.acquia.com/sites/default/files/downloads/dev-desktop/acquiadevdesktop-#{version}.dmg"
  appcast 'https://dev.acquia.com/downloads'
  name 'Acquia Dev Desktop'
  homepage 'https://www.acquia.com/drupal/acquia-dev-desktop'

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
