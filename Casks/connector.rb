cask :v1 => 'connector' do
  version '2.2.3'
  sha256 'fa05fc0332ead81a16ad43ce64e67e645f6a73e98b845405bbcd827caec6834f'

  url "http://update.mediaware.sk/numpad/connector-#{version}.zip"
  homepage 'http://mediaware.sk/connector'
  license :unknown    # todo: improve this machine-generated value

  app 'Connector.app'
end
