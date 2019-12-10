cask 'nomachine' do
  version '6.8.2_1'
  sha256 '72326d10545f372d99d7ebed7b97e3154abd46d41a4a0bfb2131273389d591f0'

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
