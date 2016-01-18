cask 'clipy' do
  version '1.0.5'
  sha256 '774446dd5da9d47960ec8be2d44e26318913792603a17d76853774d1c12fdd25'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: '5c66d9449c5f3a31e05d9605fa96d05f512c9bdfefe7756281d5be795dc8b011'
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
