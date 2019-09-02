cask 'axe-edit-iii' do
  version '1.03.03'
  sha256 '0babdb30a7acf32bfc9681452a9e600762c42d36943cd37a5d6136e0b2d728e8'

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/axe-fx-iii-edit/'
  name 'Axe-Edit III'
  homepage 'https://www.fractalaudio.com/axe-fx-iii-edit/'

  app 'Axe-Edit III.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Axe-Edit III'
end
