cask 'prosys-opc-ua-client' do
  version '3.1.6-322'
  sha256 'ab90d83a8dcdd399baebba3999034806f4a1360c64861b00aadebbad689103cc'

  url "https://www.prosysopc.com/opcua/apps/JavaClient/dist/#{version}/prosys-opc-ua-client-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-client-downloads.php'
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
