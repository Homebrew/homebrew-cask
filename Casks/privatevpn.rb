cask 'privatevpn' do
  version '3.0.3'
  sha256 'f661d72ba3fe23790376ead1ad78d56c65a78840a65c5dccc4cf83f81b0d9c26'

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
