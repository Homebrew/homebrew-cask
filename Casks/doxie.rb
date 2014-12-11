cask :v1 => 'doxie' do
  version :latest
  sha256 :no_check

  url 'http://www.getdoxie.com/resources/files/download_current_mac.php'
  homepage 'http://www.getdoxie.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Doxie.app'
end
