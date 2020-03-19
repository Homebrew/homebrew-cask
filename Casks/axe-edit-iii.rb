cask 'axe-edit-iii' do
  version '1.05.07'
  sha256 '7a1efda0c26b095a9e5fbb2bea8b95561dc61085ad152d25f3c161fdbc690c5f'

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/axe-fx-iii-edit/'
  name 'Axe-Edit III'
  homepage 'https://www.fractalaudio.com/axe-fx-iii-edit/'

  app 'Axe-Edit III.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Axe-Edit III'
end
