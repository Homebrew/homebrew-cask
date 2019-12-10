cask 'code42-crashplan' do
  version '7.0.3'
  sha256 'd0d00edc7855a2c1a5282a138c2d398102d8f5f5d59f148787b0fda9d307b9e3'

  # download.code42.com was verified as official when first introduced to the cask
  url "https://download.code42.com/installs/mac/install/Code42CrashPlan/Code42CrashPlan_#{version}_Mac.dmg"
  appcast 'https://support.code42.com/Release_Notes'
  name 'CrashPlan'
  homepage 'https://www.crashplan.com/'

  auto_updates true

  pkg 'Install Code42 CrashPlan.pkg'

  uninstall launchctl: 'com.backup42.desktop',
            pkgutil:   'com.crashplan.app.pkg',
            script:    {
                         executable: 'Uninstall.app/Contents/Resources/uninstall.sh',
                         sudo:       true,
                       }
end
