cask :v1 => 'ivpn' do
  version '7.3.1'
  sha256 '85f5e4fb9d09fabf13c08841aa1f35e64d44792b09fd521f49a5281a675d17f5'

  url "http://macserve.org.uk/downloads/ivpn/iVPN_#{version}.zip"
  appcast 'http://macserve.org.uk:8090/profileInfo.php',
          :sha256 => '6a4c9162b1b516b99e274b6c5cb2760a1b615de163395e639280639a785e0315'
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
