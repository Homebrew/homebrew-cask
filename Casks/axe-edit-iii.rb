cask 'axe-edit-iii' do
  version '1.01.07'
  sha256 '28bceb1b64e4c0ec68dc5ef26cf1c33b496c4155503114cf012dc9b261dc875e'

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
