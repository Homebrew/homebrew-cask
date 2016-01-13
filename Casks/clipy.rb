cask 'clipy' do
  version '1.0.5'
  sha256 '774446dd5da9d47960ec8be2d44e26318913792603a17d76853774d1c12fdd25'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          :sha256 => 'ad47a5695409560f5b91435d4d8f5f0674b63d12d4c1f7e26f81ec162452e282'
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on :macos => '>= :mavericks'

  app 'Clipy.app'
end
