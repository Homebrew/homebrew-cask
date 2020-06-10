cask 'onlyoffice' do
  version '5.5.1'
  sha256 '7090144f0d06328a7a1de43ea779c3db32b1afd7358295ca71ff2fbddb03601b'

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
