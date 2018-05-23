cask 'endurance' do
  version '1.1r18'
  sha256 'a20ceb5629de4b8785ebb6b4e0e86ca0be36de591c2dc6ed39f73e9cdd0c9884'

  url "https://enduranceapp.com/downloads/Endurance#{version}.zip"
  appcast 'https://enduranceapp.com/appcast',
          checkpoint: '6b642532ab8d28d5fe7d5282fd8086ab47c2111f017893fcc9ea7f6b1e47a182'
  name 'Endurance'
  homepage 'https://enduranceapp.com/'

  app 'Endurance.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper',
            launchctl: 'com.MagnetismStudios.endurance.helper'
end
