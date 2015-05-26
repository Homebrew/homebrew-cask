cask :v1 => 'ipvanish-vpn' do
  version :latest
  sha256 :no_check

  url 'https://www.ipvanish.com/software/osx/IPVanish.dmg'
  name 'IPVanish'
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          :sha256 => 'c64bd51aec091bb09da69aff1b44d7c8c9ef15d78be55cf5702a9805ee693385'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
