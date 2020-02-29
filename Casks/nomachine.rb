cask 'nomachine' do
  version '6.9.2_1'
  sha256 '253bea1c7658a4301d536280b3bdd93533cb90ee85c56a2b6a1f662b3a1d7090'

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
