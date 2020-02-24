cask 'acquia-dev' do
  version '2.2019.10.18'
  sha256 'ddd7c6c12f582e5909eb44ce7a59566fba844fcc8359dd50260172b49ad74c4a'

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
