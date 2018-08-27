cask 'openlp' do
  version '2.4.6'
  sha256 '5994c41d3b7aefbd84624fb4d8fc09bf63eda7693e2ed68e1a36b4f8abe60094'

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  name 'OpenLP'
  homepage 'https://openlp.org/'

  app 'OpenLP.app'
end
