cask 'endurance' do
  version '1.1r18'
  sha256 'a20ceb5629de4b8785ebb6b4e0e86ca0be36de591c2dc6ed39f73e9cdd0c9884'

  url "https://enduranceapp.com/downloads/Endurance#{version}.zip"
  appcast 'https://enduranceapp.com/appcast'
  name 'Endurance'
  homepage 'https://enduranceapp.com/'

  app 'Endurance.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper',
            launchctl: 'com.MagnetismStudios.endurance.helper'
end
