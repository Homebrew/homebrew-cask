cask 'endurance' do
  version '3.0,45'
  sha256 '84a1d401fc7575fa0e34f0ea7292a97e7f8e51fa87036273b169c2ec31ff437a'

  url "https://enduranceapp.com/prerelease/Endurance#{version.before_comma}r#{version.after_comma}.zip"
  appcast 'https://enduranceapp.com/appcast'
  name 'Endurance'
  homepage 'https://enduranceapp.com/'

  app 'Endurance.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.MagnetismStudios.endurance.helper',
            launchctl: 'com.MagnetismStudios.endurance.helper'
end
