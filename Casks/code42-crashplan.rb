cask 'code42-crashplan' do
  version '6.9.4'
  sha256 'a58050cecec00b2fadf3a81d5f8e536c341d351d238a1d37bc70e490940baad3'

  # download.code42.com was verified as official when first introduced to the cask
  url "https://download.code42.com/installs/mac/install/Code42CrashPlan/Code42CrashPlan_#{version}_Mac.dmg"
  appcast 'https://support.code42.com/Release_Notes/CrashPlan_for_Small_Business_release_notes'
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
