cask 'crashplan' do
  version '4.8.3'
  sha256 '2fea4c7255dc9aee83ba8a35f73fcc0519fdfa8dbdf84e62bc8be1c4510b5429'

  url "https://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_#{version}_Mac.dmg"
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
