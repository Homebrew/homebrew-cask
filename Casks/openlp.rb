cask 'openlp' do
  version '2.9.1'
  sha256 '1ab87856634a8761d6598e1b4f2c468c3b32676f8e35f63f322a54b803bf823f'

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  appcast 'https://get.openlp.org'
  name 'OpenLP'
  homepage 'https://openlp.org/'

  app 'OpenLP.app'
end
