cask 'favro' do
  version '1.0.45'
  sha256 'de7883fce24cba3cb8edd096d86c3180c4c3e02a63ddda08409e008e199c1a3e'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
