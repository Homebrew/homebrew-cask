cask 'nomachine' do
  version '6.7.6_6'
  sha256 '908ca2c602afcf17d3c0227bf711b2745946dba4d490be51aa95875529dd991d'

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  appcast 'https://www.nomachine.com/download/download&id=7'
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete:    '/Applications/NoMachine.app',
            launchctl: 'com.nomachine.localnxserver'
end
