cask 'endurance' do
  version '2.0,36'
  sha256 '3879bdd612c2e5c89c8f308424d2c65f91858621f2ecc70e6c2b742849b19d45'

  url "https://enduranceapp.com/beta/Endurance#{version.after_comma}.zip"
  appcast 'https://enduranceapp.com/appcast'
  name 'Endurance'
  homepage 'https://enduranceapp.com/'

  app 'Endurance.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper',
            launchctl: 'com.MagnetismStudios.endurance.helper'
end
