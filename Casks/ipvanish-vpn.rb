cask 'ipvanish-vpn' do
  version '3.0.7_451'
  sha256 '9cebe70f906b8ca72db40d95f68f020f300643dc975b08af6ee60a83c88bd93d'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: '501e0775ce7dc3287971307dfb212a97281de85fe13428c60b69159b61178e01'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
