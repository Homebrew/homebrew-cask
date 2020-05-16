cask 'acquia-dev' do
  version '2.2020.05.13'
  sha256 '6ac6a4fcc43c228c34113a04133f7fbaaa83f7c852f83cc0afbceb18295cfcf6'

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
