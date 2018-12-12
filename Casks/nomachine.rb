cask 'nomachine' do
  version '6.4.6_1'
  sha256 '1d8440ac3b93e7a04802d08e338fcd2ce29dd42834b37094a81ab19ef41882ba'

  url "https://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  # To ensure it ran, verify if /Library/Application Support/NoMachine/nxuninstall.sh no longer exists
  uninstall delete: '/Applications/NoMachine.app'
end
