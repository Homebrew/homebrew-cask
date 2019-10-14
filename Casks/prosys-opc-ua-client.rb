cask 'prosys-opc-ua-client' do
  version '3.2.0-328'
  sha256 '3d00b53949c790d212f71fa17bc463e61bd0f1d6293758a47ae87ae86cf2ec40'

  url "https://www.prosysopc.com/opcua/apps/JavaClient/dist/#{version}/prosys-opc-ua-client-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-client-downloads.php'
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
