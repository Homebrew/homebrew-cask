cask :v1 => 'amethyst' do
  version '0.9.5'
  sha256 'c4e67df3e8c2c9e885f1b5d230d87462dcfc8a50a81cffc62d1096fda589d9a8'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          :sha256 => '7256809d4b302019f17b91ba4209ba02cbd3450758a5d17f37aaf71aa2e50306'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
