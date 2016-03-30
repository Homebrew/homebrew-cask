cask 'ivpn' do
  version '7.4.2'
  sha256 '1b3bf872999aa88f98451420f0fc00f6c3926fa7e58bea99d37508d89b915a4d'

  url "https://macserve.org.uk/downloads/ivpn/iVPN_#{version}.zip"
  appcast 'http://macserve.org.uk:8090/profileInfo.php',
          checkpoint: 'fe87e733a838d6bfe7bc43484f914dc489ea595ad40c61e85bd376cf3ad8945a'
  name 'iVPN'
  homepage 'https://macserve.org.uk/projects/ivpn/'
  license :commercial

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

  zap       delete: [
                      '~/Library/Preferences/com.MacServe.iVPN.plist',
                      '/Library/LaunchDaemons/com.macserve.ppp.l2tp.plist',
                      '/Library/LaunchDaemons/com.macserve.ppp.pptp.plist',
                      '/private/etc/ppp/',
                    ]
end
