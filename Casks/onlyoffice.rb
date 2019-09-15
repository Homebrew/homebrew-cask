cask 'onlyoffice' do
  version '5.3.5'
  sha256 'b7c74e054eb2b429a4c6a9bdf225ce5d49960f8180ae19c0f8901e9e84c7929e'

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
