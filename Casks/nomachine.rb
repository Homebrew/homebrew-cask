cask 'nomachine' do
  version '6.2.4_1'
  sha256 'd429e6b1f68e9e76c759692e6b553a7d213fd65ae873bd46e478f9c4f15ec724'

  url "http://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete: '/Applications/NoMachine.app'
end
