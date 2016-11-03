cask 'ipvanish-vpn' do
  version '3.0.4'
  sha256 'cf934a6cf62bbc4268e438a294e1ae337b27125df46970046412c506d0d8b92a'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: 'a2d2d45d327e4e2bdcc4546ede48819bcde3d8e9f416a246009e615e7a4db7c2'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
