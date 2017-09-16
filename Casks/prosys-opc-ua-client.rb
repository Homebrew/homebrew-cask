cask 'prosys-opc-ua-client' do
  version '2.3.3-170'
  sha256 '3bf668006e6f2918cf6dc65c62d4d4a7e490fbb229b48142448e4d32c33400fe'

  url "https://www.prosysopc.com/opcua/apps/JavaClient/dist/#{version}/prosys-opc-ua-client-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-client-downloads.php',
          checkpoint: '15253a3c96c82e0f64b9238be860490896d39b97ce9b72f53d86cb694021c9dc'
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
