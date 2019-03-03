cask 'axe-edit-iii' do
  version '1.01.01'
  sha256 '0f1f4df5a10705daec6c483e73bd402cb50f492df580a3163ffe9d824050437e'

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
