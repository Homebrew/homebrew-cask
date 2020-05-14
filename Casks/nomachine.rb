cask 'nomachine' do
  version '6.10.12_7'
  sha256 'd53fca76f427aa1119954dd43c750f9354135cd72f5266c5d8ce55ce7c6591ca'

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
