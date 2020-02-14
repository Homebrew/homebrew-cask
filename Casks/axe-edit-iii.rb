cask 'axe-edit-iii' do
  version '1.05.02'
  sha256 'c3e9c952c276421455fff5191e96772a0b3021d5d02fbcc28e860fd93e81112e'

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/axe-fx-iii-edit/'
  name 'Axe-Edit III'
  homepage 'https://www.fractalaudio.com/axe-fx-iii-edit/'

  app 'Axe-Edit III.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Axe-Edit III'
end
