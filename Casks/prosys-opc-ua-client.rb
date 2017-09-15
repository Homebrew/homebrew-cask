cask 'prosys-opc-ua-client' do
  version '2.3.3,170'
  sha256 '3bf668006e6f2918cf6dc65c62d4d4a7e490fbb229b48142448e4d32c33400fe'

  url "https://www.prosysopc.com/opcua/apps/JavaClient/dist/#{version.before_comma}-#{version.after_comma}/prosys-opc-ua-client-#{version.before_comma}-#{version.after_comma}.dmg"
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
