cask :v1 => 'clipy' do
  version '1.0.5'
  sha256 '774446dd5da9d47960ec8be2d44e26318913792603a17d76853774d1c12fdd25'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          :sha256 => '230588ccc0ea43d7fb3c0ef9a59336025944f2d4e7d87285ba60a876031d93a9',
          :format => :sparkle
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on :macos => '>= :mavericks'

  app 'Clipy.app'
end
