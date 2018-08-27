cask 'rocks-n-diamonds' do
  version '4.1.0.0'
  sha256 '755fa66f18ced47d1249a8c1080b683a81cbd15231bb62cd51f65b60e28e92d5'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
