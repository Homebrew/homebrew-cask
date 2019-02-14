cask 'favro' do
  version '1.0.22'
  sha256 '71c2f7a06fd609e5a4f44d94cbcb2b7b712d179f6359de3112786041f5b5d8df'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
