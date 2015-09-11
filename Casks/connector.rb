cask :v1 => 'connector' do
  version '2.2.3'
  sha256 'fa05fc0332ead81a16ad43ce64e67e645f6a73e98b845405bbcd827caec6834f'

  url "http://update.mediaware.sk/numpad/connector-#{version}.zip"
  name 'Connector'
  appcast 'http://update.mediaware.sk/numpad.xml',
          :sha256 => 'fb7b0006076a235eb297f1e1db7dc80b3cbc3d6eed6fb53b55be38d3ffc4a3ae'
  homepage 'http://mediaware.sk/connector'
  license :gratis

  app 'Connector.app'
end
