cask 'ipvanish-vpn' do
  version '3.0.4_444'
  sha256 'ab8e6bbbb0e22164c82ec6a622c94894a850fe3e4738d90e6f522807487ad296'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: 'a2d2d45d327e4e2bdcc4546ede48819bcde3d8e9f416a246009e615e7a4db7c2'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
