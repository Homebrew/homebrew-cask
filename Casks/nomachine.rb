cask 'nomachine' do
  version '6.5.6_8'
  sha256 'aa7378cb40eda6282f1f14314ade4780f9987c2dccff9ce61c537f278582d2dc'

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
