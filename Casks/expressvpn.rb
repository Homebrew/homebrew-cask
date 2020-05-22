cask 'expressvpn' do
  version '7.8.3.4'
  sha256 'accf6ac3426161ec00fb525ea8e341e53571165ddfd06cad98aace6aef464365'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn_mac_#{version}_release.pkg"
  appcast 'https://www.expressvpn.xyz/vpn-software/vpn-mac'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/vpn-software/vpn-mac/'

  auto_updates true

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: [
                         'com.expressvpn.ExpressVPN.agent',
                         'com.expressvpn.ExpressVPN.update',
                       ]
end
