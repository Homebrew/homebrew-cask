cask 'onlyoffice' do
  version :latest
  sha256 :no_check

  url 'http://download.onlyoffice.com/install/desktop/editors/mac/distrib/onlyoffice/ONLYOFFICE.dmg'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  app 'ONLYOFFICE.app'
end
