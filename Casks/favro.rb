cask 'favro' do
  version '1.0.42'
  sha256 'cbabd02139b6eec7c458f20bb9d147dddf5fdb10dacbc225db19889b57ff5974'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
