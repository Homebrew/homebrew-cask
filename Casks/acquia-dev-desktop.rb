cask 'acquia-dev-desktop' do
  version '2-2015-07-27'
  sha256 '0d0f750912157d25220d6d09cb3175e6bfcaf8cd3b412fcf7621ec516951de42'

  url "https://www.acquia.com/sites/default/files/downloads/dev-desktop/AcquiaDevDesktop-#{version}.dmg"
  name 'Acquia Dev Desktop'
  homepage 'https://www.acquia.com/products-services/dev-desktop'
  license :gratis

  installer script: 'Acquia Dev Desktop Installer.app/Contents/MacOS/installbuilder.sh',
            args:   ['--mode', 'unattended', '--unattendedmodeui', 'none'],
            sudo:   true

  uninstall script: {
                      executable: '/Applications/DevDesktop/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended', '--unattendedmodeui', 'none'],
                      sudo:       true,
                    }
end
