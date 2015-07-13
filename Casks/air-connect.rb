cask :v1 => 'air-connect' do
  version '2.0.1'
  sha256 'e8f93fbcb626241f9cbe0f934cf9dada319f3f80399ec83558aa696988575b2a'

  url "https://www.avatron.com/updates/software/airconnect_mac/acmac#{version.gsub('.','')}.zip"
  name 'Air Connect'
  appcast 'https://avatron.com/updates/software/airconnect_mac/appcast.xml',
          :sha256 => 'af9bc6dc41bc632995c4e49b958a5623bc091ac0fe1fb337fbc9a571cfc1e85b'
  homepage 'https://avatron.com/get-air-connect/'
  license :gratis

  app 'Air Connect.app'
end
