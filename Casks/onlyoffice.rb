cask 'onlyoffice' do
  version '4.2.2'
  sha256 '2eb9cc0633417ad13c961f66d0efe37dd8610244551b41a879f3969f6420f424'

  url "http://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'http://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml',
          checkpoint: '3cbd648735c37e206767fa08c19e49a02545bf489ff882e05cb349a1ee339a1c'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
