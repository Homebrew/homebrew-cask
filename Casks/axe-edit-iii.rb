cask 'axe-edit-iii' do
  version '1.01.06'
  sha256 '5b025c9407bebe6de4c7d5dd1e432daea605e86ccb7d4985862fb648f785bf2f'

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
