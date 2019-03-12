cask 'axe-edit-iii' do
  version '1.01.02'
  sha256 'c67c8360035cec138b0589231e27e3a957e37dab5440546634125a5cf248937d'

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/axe-fx-iii-edit/'
  name 'Axe-Edit III'
  homepage 'https://www.fractalaudio.com/axe-fx-iii-edit/'

  pkg "Axe-Edit-III-OSX-v#{version.tr('.', 'p')}.pkg"

  uninstall pkgutil: [
                       'com.FractalAudio.AIIIEdit.pkg',
                       'com.FractalAudio.AIIIEdit.ReleaseNotes.pkg',
                     ]

  zap trash: '~/Library/Application Support/Fractal Audio/Axe-Edit III'
end
