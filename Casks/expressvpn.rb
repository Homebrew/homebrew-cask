cask 'expressvpn' do
  version '7.8.2.2'
  sha256 '819d9a68426ff6c683a711ccecf3b046dbe87f7837287807207280f51e894794'

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
