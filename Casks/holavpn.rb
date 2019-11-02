cask 'holavpn' do
  version '1.0.24'
  sha256 '5502448c404cc661897fae0fcca40ee503d7644314bd84db0486c13af057ee77'

  url "https://cdn4.hola.org/static/HolaVPN-#{version}.dmg"
  appcast 'https://hola.org/macos_vpn_update.xml'
  name 'Hola VPN'
  homepage 'https://hola.org/'

  app 'HolaVPN.app'
end
