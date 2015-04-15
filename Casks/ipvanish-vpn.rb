cask :v1 => 'ipvanish-vpn' do
  version :latest
  sha256 :no_check

  url 'https://www.ipvanish.com/software/osx/IPVanish.dmg'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
