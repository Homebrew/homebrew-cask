cask 'ireadfast' do
  version '2.0'
  sha256 '0bc213c6da72a7917ceba8a9de46e307933608cd6d2bf397770517401ab3d98c'

  url "https://www.gengis.net/downloads/iReadFast%20#{version}.dmg"
  appcast 'https://www.gengis.net/prodotti/iReadFast_Mac/en/index.php',
          checkpoint: '85acb65eb5e61cb2f9031d827bf3314e99934813b1b97867b28d1e98658db92a'
  name 'iReadFast'
  homepage 'https://www.gengis.net/prodotti/iReadFast_Mac/en/'

  app 'iReadFast.app'
end
