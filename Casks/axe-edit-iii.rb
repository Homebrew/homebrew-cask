cask 'axe-edit-iii' do
  version '1.00.13'
  sha256 '0985215254eb20173d9afa9137ea11896f2c545f4ac00fb633b6e3ffb75abb81'

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
