cask 'cisco-proximity' do
  version '3.0.7'
  sha256 '0ef97f47d97a22f66bcef53bbbab5c45cedd6d94ae121d8b33196f0a6b25908b'

  url 'https://proximity.cisco.com/mac/Proximity.dmg'
  appcast 'https://proximity.cisco.com/mac/version.txt'
  name 'Cisco Proximity'
  homepage 'https://proximity.cisco.com/'

  app 'Cisco Proximity.app'

  uninstall launchctl: 'com.cisco.proximity',
            signal:    [
                         ['TERM', 'com.cisco.experimental.Proximity'],
                       ]

  zap trash: [
               '~/Library/Preferences/com.cisco.experimental.proximity.plist',
               '~/Library/Preferences/com.cisco.Proximity.plist',
               '~/Library/Saved Application State/com.cisco.experimental.Proximity.savedState',
             ]
end
