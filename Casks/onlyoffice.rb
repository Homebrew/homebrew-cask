cask 'onlyoffice' do
  version '5.4.2'
  sha256 '88bd9b6bfa4e2121c02702fb53e64a495b569512f0d118e1238ee255f2315da4'

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
