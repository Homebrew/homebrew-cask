cask 'nomachine' do
  version '6.6.8_5'
  sha256 '8165caa1e54fbb840fd3492a4e6657a4932c7d30305af6a7bdb003dd3b8fa9b7'

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
