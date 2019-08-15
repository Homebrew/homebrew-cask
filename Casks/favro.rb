cask 'favro' do
  version '1.0.33'
  sha256 'dd1309fc5d439763b20b2d9ced34fbb124015c6b2f74e2ba80670c74e00ce3a6'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
