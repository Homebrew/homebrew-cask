cask 'expressvpn' do
  version '6.7.4.4082'
  sha256 '2a6b3fe531433eb96e0dad5f3d6403898079ebddd0c511af801527b6a48c4505'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: 'com.expressvpn.ExpressVPN.agent'
end
