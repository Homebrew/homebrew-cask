cask 'favro' do
  version '1.0.25'
  sha256 'ab554e74c697b3d3f4477e3d4a3f3cda8aa564e6789e6128d364e744f7882dd5'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
