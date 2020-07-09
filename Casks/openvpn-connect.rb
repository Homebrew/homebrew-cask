cask 'openvpn-connect' do
  version '3.2.1,1484'
  sha256 '00a3b10c29c13336e52eae6f6dd3960058e9c77e463eaf0742378a31ad0485d4'

  url "https://swupdate.openvpn.net/downloads/connect/openvpn-connect-#{version.before_comma}.#{version.after_comma}_signed.dmg"
  appcast 'https://openvpn.net/client-connect-vpn-for-mac-os/'
  name 'OpenVPN Connect client'
  homepage 'https://openvpn.net/client-connect-vpn-for-mac-os/'

  pkg "OpenVPN_Connect_#{version.before_comma.dots_to_underscores}(#{version.after_comma})_Installer_signed.pkg"

  uninstall launchctl: 'org.openvpn.client',
            script:    {
                         executable: '/Applications/OpenVPN Connect/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh',
                         sudo:       true,
                       },
            pkgutil:   [
                         'org.openvpn.client.pkg',
                         'org.openvpn.client_framework.pkg',
                         'org.openvpn.client_launch.pkg',
                         'org.openvpn.client_uninstall.pkg',
                       ]
end
