cask 'connector' do
  version '2.2.3'
  sha256 'fa05fc0332ead81a16ad43ce64e67e645f6a73e98b845405bbcd827caec6834f'

  url "https://update.mediaware.sk/numpad/connector-#{version}.zip"
  appcast 'https://update.mediaware.sk/numpad.xml',
          checkpoint: '5b1a1cf2f25f2eee0068ece16536ffe97337fbeae6315018e6842ee64a1bb7c5'
  name 'Connector'
  homepage 'https://mediaware.sk/connector'

  app 'Connector.app'
end
