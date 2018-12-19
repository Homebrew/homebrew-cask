cask 'endurance' do
  version '1.2'
  sha256 '901114580f4e72241ad9233a8c935ba224ee32fa99fd78e3da54168cb21b0833'

  url "https://enduranceapp.com/beta/Endurance#{version}.zip"
  appcast 'https://enduranceapp.com/appcast'
  name 'Endurance'
  homepage 'https://enduranceapp.com/'

  app 'Endurance.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper',
            launchctl: 'com.MagnetismStudios.endurance.helper'
end
