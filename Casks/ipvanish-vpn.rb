cask 'ipvanish-vpn' do
  version '2.2.2_235'
  sha256 '6e7eb04ca47faf30e6337b4cfae4c050577fb3d68d40bd9715da3de3674231eb'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: '40318ce78eac75799d56680b4d841c3159821a8ecba90964099b2a68d927d515'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
