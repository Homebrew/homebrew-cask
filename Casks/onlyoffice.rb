cask 'onlyoffice' do
  version '5.3.3'
  sha256 'e0348f505e0698a14f5b3366aca5957eafab5e4639a77e97a7edd7fc88c9ab9b'

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
