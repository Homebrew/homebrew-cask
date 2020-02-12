cask 'prosys-opc-ua-client' do
  version '4.0.2-231'
  sha256 '5886f887a282f2bd45066f8c6a85a9431457e26281e598bc35f1f44b9e58056a'

  url "https://www.prosysopc.com/opcua/apps/UaBrowser/dist/#{version}/prosys-opc-ua-browser-macos-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-client-downloads.php'
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
