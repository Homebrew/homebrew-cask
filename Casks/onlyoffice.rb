cask 'onlyoffice' do
  version '4.4'
  sha256 'ef98728c2b644e025d75c4abb722da71627e9d56169e4cd8ff95487e9ae27ce6'

  url "http://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'http://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml',
          checkpoint: '3ba11ef937106e8a2cbc29434efb68419b8f3c49abc288f5dbb295a005c5a019'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
