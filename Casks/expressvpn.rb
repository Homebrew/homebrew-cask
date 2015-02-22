cask :v1 => 'expressvpn' do
  version '4.0.1'
  sha256 '720f03e3c64e3d84a18f92e5055eadb7df6dd75feee831330be50802a836bc16'

  url 'https://www.expressvpn.com/4568726248/mac/expressvpn-install_v4.0.1.288.pkg'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.com'
  license :commercial

  pkg 'expressvpn-install_v4.0.1.288.pkg'
  depends_on :macos => :yosemite

  uninstall :pkgutil => 'com.expressvpn.ExpressVPN',
            :quit => 'com.expressvpn.ExpressVPN'
end