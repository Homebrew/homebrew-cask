cask 'ipvanish-vpn' do
  version '3.1.0_b15007'
  sha256 '085d7fb077951656c3d7e3e2247c32f32244adb2fc735ef48473cc1c19d128b1'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
