cask 'openvpn-connect' do
  version '2.7.1.107'
  sha256 '058a8d2c5b3817722a0474eb004e77d551726e710a4fb17c4fa34a81faa6fa2a'

  url "https://swupdate.openvpn.net/as/clients/openvpn-connect-#{version}_signed.dmg"
  appcast 'https://openvpn.net/client-connect-vpn-for-mac-os/'
  name 'OpenVPN Connect client'
  homepage 'https://openvpn.net/client-connect-vpn-for-mac-os/'

  pkg 'OpenVPN_Connect_Installer_signed.pkg'

  uninstall script: {
                      executable: '/Applications/OpenVPN/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh',
                      sudo:       true,
                    }
end
