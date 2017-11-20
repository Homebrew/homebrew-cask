cask 'macserve-ivpn' do
  version '7.4.3'
  sha256 '4c8ed0b22e13ae23c0afd1307c690d9bb60011b5336c6b1eb5a2a42371f3b7e0'

  url "https://macserve.org.uk/downloads/ivpn/iVPN_#{version}.zip"
  appcast 'http://macserve.org.uk:8090/profileInfo.php',
          checkpoint: 'd61209d979c8e8139f92ea2a2efc770a03fae77e24895bd6e6e4fc83273b7d69'
  name 'iVPN'
  homepage 'https://macserve.org.uk/'

  app 'iVPN.app'

  uninstall quit:      [
                         'com.MacServe.iVPN',
                         'com.MacServe.iVPN-Monitor',
                       ],
            launchctl: [
                         'com.MacServe.ivpnHelper',
                         'com.macserve.ivpn',
                         'com.macserve.ppp.l2tp',
                         'com.macserve.ppp.pptp',
                       ]

  zap trash: [
               '~/Library/Preferences/com.MacServe.iVPN.plist',
               '/Library/LaunchDaemons/com.macserve.ppp.l2tp.plist',
               '/Library/LaunchDaemons/com.macserve.ppp.pptp.plist',
               '/private/etc/ppp/',
             ]
end
