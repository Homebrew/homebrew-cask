cask 'onlyoffice' do
  version '5.2.1'
  sha256 'e6586f3385fad1574b35a0bc2f5fd4fc7efc2a7348eda1c6ebcd129b24fd139f'

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
