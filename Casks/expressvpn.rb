cask 'expressvpn' do
  version '6.7.5.4209'
  sha256 'ec811bcccc00cdfa034c4b4c5355be8ca775f1f689c2cc8aee9896d46c877acb'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: 'com.expressvpn.ExpressVPN.agent'
end
