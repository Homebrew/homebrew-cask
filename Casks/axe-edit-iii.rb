cask 'axe-edit-iii' do
  version '1.04.01'
  sha256 '0fc2b6cc75a89036ab8f6b979ee06b25ec87ed4b817925c2fcfc9411c9717c96'

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/axe-fx-iii-edit/'
  name 'Axe-Edit III'
  homepage 'https://www.fractalaudio.com/axe-fx-iii-edit/'

  app 'Axe-Edit III.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Axe-Edit III'
end
