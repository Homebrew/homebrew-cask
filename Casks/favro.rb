cask 'favro' do
  version '1.0.36'
  sha256 'cb42e7f8bcb998d005645b22b200e38f21d9b92ca697662226f298477191eed6'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
