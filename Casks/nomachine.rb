cask 'nomachine' do
  version '6.7.6_6'
  sha256 'ca3eb2452a0bb5340ecd9235aa2393219f4b7d8bbf1f4d26348a795dec4fdaba'

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
