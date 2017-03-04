cask 'ipvanish-vpn' do
  version '3.0.6_450'
  sha256 '8d53d319b51bf80e02d9e37745c0119c3e5d029ac5f033d912a5ccff8dce10a0'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: 'd4ec0e0ee484046d05488c92e70e53b5bee194e7102d8b6097b74765700c3895'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
