cask 'privatevpn' do
  version '3.0.2'
  sha256 '84620dcfbc50533d6773c17c454eeb10c9592421605992f1c63ea78db124a387'

  url 'https://privatevpn.com/client/PrivateVPN.dmg'
  appcast 'https://xu515.pvdatanet.com/v3/mac/appcast.xml'
  name 'PrivateVPN'
  homepage 'https://privatevpn.com/'

  depends_on macos: '>= :el_capitan'

  app 'PrivateVPN.app'

  zap trash: [
               '/Library/LaunchDaemons/com.privat.vpn.helper.plist',
               '/Library/PrivilegedHelperTools/com.privat.vpn.helper',
               '~/Library/Application Support/com.privat.vpn',
               '~/Library/Caches/com.privat.vpn',
               '~/Library/Cookies/com.privat.vpn.binarycookie',
               '~/Library/Preferences/com.privat.vpn.plist',
             ]
end
