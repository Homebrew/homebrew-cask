cask 'acquia-dev' do
  version '2.2019.06.06'
  sha256 '27caf4ac1cc89314a2f89f1d463a784d224d7950792a46735bb3dc6ffa18f47f'

  url "https://dev.acquia.com/sites/default/files/file/#{version.minor_patch.dots_to_hyphens}/AcquiaDevDesktop-#{version.dots_to_hyphens}.dmg"
  appcast 'https://dev.acquia.com/downloads',
          configuration: version.dots_to_hyphens
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
