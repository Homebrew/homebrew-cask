cask :v1 => 'ipvanish-vpn' do
  version '2.1-225'
  sha256 'a91d66efad5d639f68bf47e5dd2b5291c75b89cdc234a787eb093c986a82c030'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.sub('-','_')}.zip"
  name 'IPVanish'
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          :sha256 => 'c64bd51aec091bb09da69aff1b44d7c8c9ef15d78be55cf5702a9805ee693385'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
