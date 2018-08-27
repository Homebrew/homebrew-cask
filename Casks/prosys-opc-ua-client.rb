cask 'prosys-opc-ua-client' do
  version '3.1.4-293'
  sha256 '113c53f233fb3acd5f0ec8fd9b647180a6f067981f2253861bd14f6faf8d7599'

  url "https://www.prosysopc.com/opcua/apps/JavaClient/dist/#{version}/prosys-opc-ua-client-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-client-downloads.php'
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
