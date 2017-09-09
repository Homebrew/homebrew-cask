cask 'crashplan-pro' do
  version '4.9.0'
  sha256 'e48fb5dc79c86538c8c31f6633e50e5606f9566998d6b25cbf2b465aa7ac2894'

  url 'https://web-fam-msp.crashplan.com/client/installers/CrashPlanPRO_4.9.0_1436674888490_33_Mac.dmg'
  name 'CrashPlan PRO'
  homepage 'https://www.crashplan.com/en-us/business/'

  auto_updates true

  pkg 'Install CrashPlan PRO.pkg'

  uninstall launchctl: 'com.backup42.desktop',
            pkgutil:   'com.crashplan.app.pkg',
            script:    {
                         executable: 'Uninstall.app/Contents/Resources/uninstall.sh',
                         sudo:       true,
                       }
end
