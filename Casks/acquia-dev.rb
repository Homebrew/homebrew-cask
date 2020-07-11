cask 'acquia-dev' do
  version '2.2020.07.02'
  sha256 '8fa88f8b901f6416b52c92c68a24ccee14273e6198edc296f7e4c7b47f6fd273'

  url "https://dev.acquia.com/sites/default/files/file/#{version.minor_patch.dots_to_hyphens}/AcquiaDevDesktop-#{version.dots_to_hyphens}.dmg"
  appcast 'https://dev.acquia.com/downloads',
          must_contain: version.dots_to_hyphens
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
