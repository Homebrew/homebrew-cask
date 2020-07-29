cask 'nomachine' do
  version '6.11.2_13'
  sha256 '70315f331a7368aefd322e9356b4afcf411af5384420f92534b4c929b2416384'

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  appcast 'https://www.nomachine.com/download/download&id=7'
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    '/Applications/NoMachine.app',
            pkgutil:   'com.nomachine.nomachine.NoMachine-*.pkg',
            launchctl: [
                         'com.nomachine.localnxserver',
                         'com.nomachine.nxserver',
                         'com.nomachine.server',
                         'com.nomachine.uninstall',
                       ]
end
