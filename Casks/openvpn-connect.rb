cask 'openvpn-connect' do
  version '3.2.0,1426'
  sha256 '1a67cf9cfc87079e02d32d8f8fbd6f83be245f2a7401c8234cd0f400deb2a88e'

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
