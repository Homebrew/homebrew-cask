cask 'endurance' do
  version '2.0,35'
  sha256 '4255023026ff263aa102c799b297b9f0c7bcda76bd7e1ce133dd5ed8061f4547'

  url "https://enduranceapp.com/beta/Endurance#{version.after_comma}.zip"
  appcast 'https://enduranceapp.com/appcast'
  name 'Endurance'
  homepage 'https://enduranceapp.com/'

  app 'Endurance.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper',
            launchctl: 'com.MagnetismStudios.endurance.helper'
end
