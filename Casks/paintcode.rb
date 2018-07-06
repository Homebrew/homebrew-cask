cask 'paintcode' do
  version '3.3.10'
  sha256 '6c27667ba5155d154f45405df9017867a0d2cd5f9467717ec06e145d0012701e'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
