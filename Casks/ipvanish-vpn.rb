cask :v1 => 'ipvanish-vpn' do
  version '2.2.0-231'
  sha256 '35b3140ef065e99d22b4491ffd51cda6eb51f360d9c38e7447b9f64350fb54eb'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.sub('-','_')}.zip"
  name 'IPVanish'
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          :sha256 => '35b73a715d5e2061b44fe594a658b84cbde8c903352e8ace25283256a2945839'
  homepage 'https://www.ipvanish.com/'
  license :gratis

  app 'IPVanish VPN.app'
end
