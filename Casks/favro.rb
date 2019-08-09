cask 'favro' do
  version '1.0.32'
  sha256 '424e22dd5d7659e328288e0fb7c3091f1262d3ab2947fff9817394fd08669416'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
