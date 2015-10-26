cask :v1 => 'openlp' do
  version '2.2'
  sha256 :no_check

  url "https://get.openlp.org/2.2/OpenLP-2.2.dmg"
  name 'OpenLP'
  homepage 'http://openlp.org'
  license :gpl

  app 'OpenLP.app'
end
