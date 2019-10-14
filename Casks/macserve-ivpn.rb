cask 'macserve-ivpn' do
  version '7.5'
  sha256 'e6ae77eeaf0dc6b1468b7c0e584fa4c2616312a876eabce52b908f7e191684fa'

  url "https://macserve.org.uk/ivpn/downloads/iVPN_#{version}.zip"
  appcast 'http://macserve.org.uk:8090/profileInfo.php'
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
