cask 'ipvanish-vpn' do
  version '3.0.4'
  sha256 '19465c0309e0b9ecabe2e371219e8ab9fe2a3b4210a1266ca57a4f40efe88bb0'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: 'a2d2d45d327e4e2bdcc4546ede48819bcde3d8e9f416a246009e615e7a4db7c2'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
