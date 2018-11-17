cask 'expressvpn' do
  version '6.7.11.4723'
  sha256 'ce9e9e48e6cb8dc7ad47554f4741d3b9e5c3be3ee662a3e29402c3f70feec3a1'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  appcast 'https://www.expressvpn.xyz/vpn-software/vpn-mac'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: 'com.expressvpn.ExpressVPN.agent'
end
