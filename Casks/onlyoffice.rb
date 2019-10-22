cask 'onlyoffice' do
  version '5.4.1'
  sha256 '3e5a961dfe9f1828d6b159e4b0fc1dbd52739c562bd3715a2ff5218ded57faf6'

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
