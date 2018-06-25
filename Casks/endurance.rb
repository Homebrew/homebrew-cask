cask 'endurance' do
  version '1.1r25'
  sha256 '06a116b70b3ae78879152bfcd6168a4e83b5b2e79782abff630ee38ec45076a9'

  url "https://enduranceapp.com/downloads/Endurance#{version}.zip"
  appcast 'https://enduranceapp.com/appcast'
  name 'Endurance'
  homepage 'https://enduranceapp.com/'

  app 'Endurance.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper',
            launchctl: 'com.MagnetismStudios.endurance.helper'
end
