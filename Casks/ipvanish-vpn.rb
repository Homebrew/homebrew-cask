cask 'ipvanish-vpn' do
  version '2.2.1_234'
  sha256 '0f44ac51d46c5fa09131719548dc73760a4db7005a999b1f9cc4c295f37e15b8'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          :sha256 => 'f7c6037421fe2d0d57c8273b34888c7a989eaa58281e5252241d0ffcb4536524'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
