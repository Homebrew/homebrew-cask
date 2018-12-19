cask 'paintcode' do
  version '3.4.3'
  sha256 '78bbfdb06879176befe8ab5c46310ba9663b0644db02dd7ce068b44bf88921cd'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
