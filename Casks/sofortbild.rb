cask 'sofortbild' do
  version :latest
  sha256 :no_check

  url 'http://www.sofortbildapp.com/download/Sofortbild.zip'
  appcast 'http://www.sofortbildapp.com/appcast.xml',
          :checkpoint => '1b7b25ff734e51c1e896ba0d38a8e904ce000cb07f9e5305261dfbcea3e7f9e6'
  name 'Sofortbild'
  homepage 'http://www.sofortbildapp.com/'
  license :gratis

  app 'Sofortbild.app'
end
