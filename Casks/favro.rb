cask 'favro' do
  version '1.0.34'
  sha256 'ed4cba5eea735cf113fb82b97a7068faaee7ba05c3f77f33b93e9e994c47bff0'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
