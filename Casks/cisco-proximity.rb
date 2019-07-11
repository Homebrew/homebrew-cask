cask 'cisco-proximity' do
  version '3.0.4'
  sha256 '68052792f145bf4f794b93f93c2923fb1d8ecd97cc3400dddb20956b52e6f2b8'

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
