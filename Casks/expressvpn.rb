cask 'expressvpn' do
  version '6.6.2.2819'
  sha256 'ed262fa96879b8ebfa4349e5c163ed96d7756f3e32b79185d2b8b0ce7230632d'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil: 'com.expressvpn.ExpressVPN'
end
