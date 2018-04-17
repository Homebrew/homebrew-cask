cask 'expressvpn' do
  version '6.7.1.3131'
  sha256 '6a142c6e47e08c9c80229bce2e51fb3b04874dc5573cac72ebf1d9ffa12fcdb2'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil: 'com.expressvpn.ExpressVPN'
end
