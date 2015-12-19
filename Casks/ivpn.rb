cask 'ivpn' do
  version '7.4.1'
  sha256 'b1e1803fe7b2f1232a3bfc4c5fddd682cc92d147ab57cab48f6391358716df2c'

  url "http://macserve.org.uk/downloads/ivpn/iVPN_#{version}.zip"
  appcast 'http://macserve.org.uk:8090/profileInfo.php',
          :sha256 => 'fcaa1830a2c5a2731b724ac9dfdd25dc5bd9a7bfd10f56b4b48fd79d6e8d87f3'
  name 'iVPN'
  homepage 'http://macserve.org.uk/projects/ivpn/'
  license :commercial

  app 'iVPN.app'

  uninstall :quit      => [
                            'com.MacServe.iVPN',
                            'com.MacServe.iVPN-Monitor'
                          ],
            :launchctl => [
                           'com.MacServe.ivpnHelper',
                           'com.macserve.ivpn',
                           'com.macserve.ppp.l2tp',
                           'com.macserve.ppp.pptp'
                          ]

  zap       :delete    => [
                           '~/Library/Preferences/com.MacServe.iVPN.plist',
                           '/Library/LaunchDaemons/com.macserve.ppp.l2tp.plist',
                           '/Library/LaunchDaemons/com.macserve.ppp.pptp.plist',
                           '/private/etc/ppp/'
                          ]
end
