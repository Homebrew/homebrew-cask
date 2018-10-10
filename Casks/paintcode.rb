cask 'paintcode' do
  version '3.4.1'
  sha256 '2498dc7c402dde4f478f92642ef0fbdbbd01cebb483e9faacefcb2d106d4c3f2'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
