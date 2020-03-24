cask 'openvpn-connect' do
  version '2.7.1.100'
  sha256 'fdd2de126c1080e91f32757ce793fdd1bf7161d8005811031cba88b168e85ade'

  url "https://swupdate.openvpn.net/as/clients/openvpn-connect-#{version}_signed.dmg"
  appcast 'https://openvpn.net/client-connect-vpn-for-mac-os/'
  name 'OpenVPN Connect client'
  homepage 'https://openvpn.net/client-connect-vpn-for-mac-os/'

  pkg 'OpenVPN Connect Installer_signed.pkg'

  uninstall script: {
                      executable: '/Applications/OpenVPN/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh',
                      sudo:       true,
                    }
end
