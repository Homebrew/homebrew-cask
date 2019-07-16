cask 'expressvpn' do
  version '7.2.0.5711'
  sha256 'e8a2eb4370d5c220d4f7a52b01f7d047ed835c521f7b7f75495bf02cf24b71f3'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  appcast 'https://www.expressvpn.xyz/vpn-software/vpn-mac'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/vpn-software/vpn-mac/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: 'com.expressvpn.ExpressVPN.agent'
end
