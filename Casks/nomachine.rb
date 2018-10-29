cask 'nomachine' do
  version '6.3.6_1'
  sha256 '1806293636a72c5b5f283034ae73221c78731d66a2a676d6936958f675698723'

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete: '/Applications/NoMachine.app'
end
