cask 'cisco-proximity' do
  version '3.0.6'
  sha256 '3dea1ffa40f31eaecb7f5ba76c8823d57ebc68f57f6fbe1e42746ff945073b31'

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
