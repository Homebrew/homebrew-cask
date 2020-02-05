cask 'favro' do
  version '1.0.39'
  sha256 '1761f8a2fd79eaf497eecac968d648bee0227f82067628f335a72aa9a627c4aa'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
