cask :v1 => 'gity' do
  version :latest
  sha256 :no_check

  url 'http://gityapp.com/Gity.zip'
  appcast 'http://gityapp.com/gity.xml'
  homepage 'http://gityapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Gity.app'
end
