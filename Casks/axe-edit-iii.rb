cask 'axe-edit-iii' do
  version '1.05.09'
  sha256 '6ed394615df9a7bb62a9c8d8d6c5bd48f27107238773793d8ccc7c57b879e3d5'

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/axe-fx-iii-edit/'
  name 'Axe-Edit III'
  homepage 'https://www.fractalaudio.com/axe-fx-iii-edit/'

  app 'Axe-Edit III.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Axe-Edit III'
end
