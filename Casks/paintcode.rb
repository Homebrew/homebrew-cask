cask 'paintcode' do
  version '3.3.1'
  sha256 '3b736b8e29eed8573d285123ea3fe3f5d9dd258549e1c78d667233736651cba9'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml",
          checkpoint: '29d13ab38d6162342c8b3f3da11df15655632a706ad849bf901a92ff7441d891'
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
