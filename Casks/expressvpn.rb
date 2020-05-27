cask 'expressvpn' do
  version '7.8.3.4'
  sha256 'accf6ac3426161ec00fb525ea8e341e53571165ddfd06cad98aace6aef464365'

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
