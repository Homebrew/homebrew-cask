cask 'nomachine-enterprise-client' do
  version '6.11.2_14'
  sha256 'bd2cf69fab6e74d87b0a6442e8d7700278128be9c1bf22628ded923be89ed147'

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine-enterprise-client_#{version}.dmg"
  appcast 'https://www.nomachine.com/download/download&id=15'
  name 'NoMachine Enterprise Client'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    '/Applications/NoMachine.app',
            pkgutil:   'com.nomachine.nomachine.NoMachine*.pkg',
            launchctl: [
                         'com.nomachine.uninstall',
                         'com.nomachine.nxlaunchconf',
                       ]
end
