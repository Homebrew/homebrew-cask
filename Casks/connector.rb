cask 'connector' do
  version '2.2.3'
  sha256 'fa05fc0332ead81a16ad43ce64e67e645f6a73e98b845405bbcd827caec6834f'

  url "http://update.mediaware.sk/numpad/connector-#{version}.zip"
  appcast 'http://update.mediaware.sk/numpad.xml',
          :sha256 => 'c6569ec39cfb77e20cbf41a8d59fe1a6b43ea3200f6541e695f75d6a887675d3'
  name 'Connector'
  homepage 'http://mediaware.sk/connector'
  license :gratis

  app 'Connector.app'
end
