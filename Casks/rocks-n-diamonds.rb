cask 'rocks-n-diamonds' do
  version '4.1.1.0'
  sha256 '382c5c866d8b40c1a1678a85aa1559adea3e773ff81bb9c29bd2c044e30869fd'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
