cask 'cisco-proximity' do
  version '3.0.5'
  sha256 'f2d069a5455ca0a42f82f26f77c0c86e4903a00f0df57019074c43a224aaa003'

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
