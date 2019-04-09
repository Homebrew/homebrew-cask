cask 'holavpn' do
  version '1.0.22'
  sha256 'fa164d67dfcde01476e598593737197b1fc26af1c1de9f778dc4fe606a5e3eb2'

  url "https://cdn4.hola.org/static/HolaVPN-#{version}.dmg"
  appcast 'https://hola.org/macos_vpn_update.xml'
  name 'Hola VPN'
  homepage 'https://hola.org/'

  app 'HolaVPN.app'
end
