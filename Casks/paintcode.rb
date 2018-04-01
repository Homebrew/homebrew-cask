cask 'paintcode' do
  version '3.3.6'
  sha256 '0e97da6713685c28e8ca198514933ead6401dd6d4963a2eed0c0b8e27cc05de6'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml",
          checkpoint: '78737eb412de8b34c038eced33553dac44f569fabb98b42b7a1852e1ae20e377'
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
