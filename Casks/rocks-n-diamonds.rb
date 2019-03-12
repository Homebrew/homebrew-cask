cask 'rocks-n-diamonds' do
  version '4.1.2.0'
  sha256 '7ecea6a331f804a6295161ce1bf6bf37ab23c172bcb0c574fd8463207e678aee'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
