cask 'prosys-opc-ua-client' do
  version '3.1.8-326'
  sha256 '7e9aff95aea06e66e2595d236e9b9b87f7b996adc5f980e4a91aada2941bad70'

  url "https://www.prosysopc.com/opcua/apps/JavaClient/dist/#{version}/prosys-opc-ua-client-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-client-downloads.php'
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
