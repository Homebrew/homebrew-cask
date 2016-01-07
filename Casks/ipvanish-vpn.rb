cask 'ipvanish-vpn' do
  version '2.2.1_234'
  sha256 '0f44ac51d46c5fa09131719548dc73760a4db7005a999b1f9cc4c295f37e15b8'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          :sha256 => 'ef99b4b91ee1ed96f0ac1b95d3150e516949eabff600e2ef7d57afab71f71a2c'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
