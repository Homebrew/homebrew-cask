cask 'crashplan' do
  version '6.8.4'
  sha256 'b4722b49d04bab9001c07aba8906bd1883484eef5e428eb2be1099cc6381d015'

  # download.code42.com was verified as official when first introduced to the cask
  url "https://download.code42.com/installs/mac/install/Code42CrashPlan/Code42CrashPlan_#{version}_Mac.dmg"
  name 'CrashPlan'
  homepage 'https://www.crashplan.com/'

  auto_updates true

  pkg 'Install CrashPlan.pkg'

  uninstall launchctl: 'com.backup42.desktop',
            pkgutil:   'com.crashplan.app.pkg',
            script:    {
                         executable: 'Uninstall.app/Contents/Resources/uninstall.sh',
                         sudo:       true,
                       }
end
