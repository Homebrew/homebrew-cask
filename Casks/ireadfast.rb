cask :v1 => 'ireadfast' do
  version '2.0'
  sha256 '0bc213c6da72a7917ceba8a9de46e307933608cd6d2bf397770517401ab3d98c'

  url "http://www.gengis.net/downloads/iReadFast%20#{version}.dmg"
  homepage 'http://www.gengis.net/prodotti/iReadFast_Mac/en/index.php'
  license :unknown    # todo: improve this machine-generated value

  app 'iReadFast.app'
end
