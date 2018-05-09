cask 'nomachine' do
  version '6.1.6_10'
  sha256 '7b7b0096364ee00b7b89156242997b58ac636bf3022e7c419e4f493963b26775'

  url "http://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete: '/Applications/NoMachine.app'
end
