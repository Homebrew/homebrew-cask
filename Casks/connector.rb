cask 'connector' do
  version '2.2.3'
  sha256 'fa05fc0332ead81a16ad43ce64e67e645f6a73e98b845405bbcd827caec6834f'

  url "https://update.mediaware.sk/numpad/connector-#{version}.zip"
  appcast 'https://update.mediaware.sk/numpad.xml'
  name 'Connector'
  homepage 'https://mediaware.sk/ware/?page_id=913'

  app 'Connector.app'
end
