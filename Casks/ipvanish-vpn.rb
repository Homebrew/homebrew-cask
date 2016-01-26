cask 'ipvanish-vpn' do
  version '2.2.1_234'
  sha256 '0f44ac51d46c5fa09131719548dc73760a4db7005a999b1f9cc4c295f37e15b8'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: '999bcbe8e257f51dd07573199541e90c7fd130db717445024e2cd55b0d916507'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
