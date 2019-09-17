cask 'nomachine' do
  version '6.8.1_1'
  sha256 '82ac992238afa52ec12182298bc3ac8e17cb5e0eddff6ed75d953cf9ea5df02b'

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  appcast 'https://www.nomachine.com/download/download&id=7'
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    '/Applications/NoMachine.app',
            launchctl: [
                         'com.nomachine.localnxserver',
                         'com.nomachine.nxserver',
                         'com.nomachine.uninstall',
                       ]
end
