cask 'doxie' do
  version :latest
  sha256 :no_check

  url 'http://www.getdoxie.com/resources/files/download_current_mac.php'
  name 'Doxie'
  homepage 'http://www.getdoxie.com/'
  license :gratis

  app 'Doxie.app'
end
