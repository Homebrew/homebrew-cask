cask 'openlp' do
  version '2.2.1'
  sha256 '9a26ef78fa8de4ab884033d635edda690f62f78755a5ac7eef0e09a1408d71b6'

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  name 'OpenLP'
  homepage 'https://openlp.org/'

  app 'OpenLP.app'
end
