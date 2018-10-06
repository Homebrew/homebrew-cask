cask 'holavpn' do
  version '1.0.21'
  sha256 '0994b474954add4cb822c4a7cee3b859a0b780f3e4729ec4352e237819d56a22'

  url "https://cdn4.hola.org/static/HolaVPN-#{version}.dmg"
  name 'Hola VPN'
  homepage 'https://hola.org/'

  app 'HolaVPN.app'
end
