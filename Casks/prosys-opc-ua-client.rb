cask 'prosys-opc-ua-client' do
  version '3.0.0-256'
  sha256 'cf6906c027e0511f50f81dc07f90a00c5e6ff76cc1a3861969223765b4f44150'

  url "https://www.prosysopc.com/opcua/apps/JavaClient/dist/#{version}/prosys-opc-ua-client-#{version}.dmg"
  appcast 'https://downloads.prosysopc.com/opc-ua-client-downloads.php',
          checkpoint: 'a3eca93e23fb41f14493cf1336aec69785438079727634827a76ee27128120d6'
  name 'Prosys OPC UA Client'
  homepage 'https://www.prosysopc.com/products/opc-ua-client/'

  app 'prosys-opc-ua-client.app'
end
