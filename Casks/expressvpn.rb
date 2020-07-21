cask 'expressvpn' do
  version '7.9.3.1'
  sha256 'd6bb82ff884ccdc3c964709d7b59db871e812ccc71f737c58be99bee293e1b51'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast 'https://www.expressvpn.xyz/vpn-software/vpn-mac'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/vpn-software/vpn-mac/'

  auto_updates true

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall script:  {
                       executable: "#{appdir}/ExpressVPN.app/Contents/Resources/uninstall.tool",
                       input:      ['Yes'],
                     },
            pkgutil: 'com.expressvpn.ExpressVPN'
end
