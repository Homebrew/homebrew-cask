cask 'openlp' do
  version '2.2'
  sha256 'c031fbffc0cf8542df893c5d79b8c827b6a7eac865ff0f5155b0d20ca9f4ab0a'

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  name 'OpenLP'
  homepage 'https://openlp.org'
  license :gpl

  app 'OpenLP.app'
end
