cask :v1 => 'doxie' do
  version :latest
  sha256 :no_check

  url 'http://www.getdoxie.com/resources/files/download_current_mac.php'
  homepage 'http://www.getdoxie.com/'
  license :unknown

  app 'Doxie.app'
end
