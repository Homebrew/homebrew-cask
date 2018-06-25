cask 'ipvanish-vpn' do
  version '3.0.11_b569'
  sha256 'fac94a469b08b3fd99d28b646da92e67f73e11ffd614f747411a928fa9e75ea7'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
