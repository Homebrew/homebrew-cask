cask :v1 => 'air-connect' do
  version :latest
  sha256 :no_check

  url 'http://downloads.avatron.com/AirConnectInstaller.zip'
  name 'Air Connect'
  appcast 'http://avatron.com/updates/software/airconnect_mac/appcast.xml',
          :sha256 => 'af9bc6dc41bc632995c4e49b958a5623bc091ac0fe1fb337fbc9a571cfc1e85b'
  homepage 'http://www.avatron.com/get-air-connect/'
  license :gratis

  app 'Air Connect.app'
end
