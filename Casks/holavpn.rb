cask 'holavpn' do
  version '1.0.23'
  sha256 '7fc8cfa9401c95b545b3ca1fd9d07d21ee5b17633a11fb36e138baa693c54d7a'

  url "https://cdn4.hola.org/static/HolaVPN-#{version}.dmg"
  appcast 'https://hola.org/macos_vpn_update.xml'
  name 'Hola VPN'
  homepage 'https://hola.org/'

  app 'HolaVPN.app'
end
