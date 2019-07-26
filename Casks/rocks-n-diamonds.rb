cask 'rocks-n-diamonds' do
  version '4.1.3.0'
  sha256 '4492c98a14b7b4f6c80d08f66d16d92f912059b0205b20ca5d1193b2c9b59987'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
