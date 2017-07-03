cask 'paintcode' do
  version '3'
  sha256 '3b736b8e29eed8573d285123ea3fe3f5d9dd258549e1c78d667233736651cba9'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version}/paintcode.zip"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
