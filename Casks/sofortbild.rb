cask :v1 => 'sofortbild' do
  version :latest
  sha256 :no_check

  url 'http://www.sofortbildapp.com/download/Sofortbild.zip'
  homepage 'http://www.sofortbildapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Sofortbild.app'
end
