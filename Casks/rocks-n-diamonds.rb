cask 'rocks-n-diamonds' do
  version '4.0.0.1'
  sha256 '638762d5229d2c4125217a7213c5bb37c2ef68fb53bff238c28efc79b9533206'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/',
          checkpoint: '5dbe5526a9c0d63bd8ee75ea25eab02bfc1f66d64f5a87190025e217359465b1'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
