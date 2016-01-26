cask 'ivpn' do
  version '7.4.1'
  sha256 'b1e1803fe7b2f1232a3bfc4c5fddd682cc92d147ab57cab48f6391358716df2c'

  url "https://macserve.org.uk/downloads/ivpn/iVPN_#{version}.zip"
  appcast 'http://macserve.org.uk:8090/profileInfo.php',
          checkpoint: '7184e0158d170544ee95a29762c4aa6fe0f96782862894814c0832ac91d7fba9'
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
