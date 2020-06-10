cask 'nomachine-enterprise-client' do
  version '6.10.12_8'
  sha256 '1cc40bccd4b86f789177d213f9a7be4fb19a48d794f56885064176ad58f7f21e'

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
