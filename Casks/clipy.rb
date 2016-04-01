cask 'clipy' do
  version '1.0.8'
  sha256 '26ff09347612c45fa623557d5f8fef1dcbfc72b467a8ba012e1720ab9c8eacef'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: '191ea5bf32fcdd8dd8bba1ccdae8bc988619c4658fb31089fc24441093b47ca8'
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
