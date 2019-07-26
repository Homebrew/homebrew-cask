cask 'favro' do
  version '1.0.30'
  sha256 '4d8e46d0baea887901721b2c40405a75ced1c11957539e3584aeca179cf28dc6'

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast 'https://download.favro.com/FavroDesktop/macOS/x64/Latest.json'
  name 'Favro'
  homepage 'https://www.favro.com/'

  app 'Favro.app'
end
