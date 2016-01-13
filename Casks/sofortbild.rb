cask 'sofortbild' do
  version :latest
  sha256 :no_check

  url 'http://www.sofortbildapp.com/download/Sofortbild.zip'
  appcast 'http://www.sofortbildapp.com/appcast.xml',
          :checkpoint => '48d27b995a543c6b5e37a8e9a226231713ef69cf5b46ba12b5b25b6d8568dc6a'
  name 'Sofortbild'
  homepage 'http://www.sofortbildapp.com/'
  license :gratis

  app 'Sofortbild.app'
end
