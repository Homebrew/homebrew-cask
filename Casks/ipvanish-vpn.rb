cask :v1 => 'ipvanish-vpn' do
  version '2.1.1-228'
  sha256 '6ecc596311496cac5f73f8ea8fc7b9934a54dc41c7c57c879ce1d9d6d35965ac'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.sub('-','_')}.zip"
  name 'IPVanish'
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          :sha256 => '35b73a715d5e2061b44fe594a658b84cbde8c903352e8ace25283256a2945839'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
