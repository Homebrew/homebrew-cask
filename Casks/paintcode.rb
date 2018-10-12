cask 'paintcode' do
  version '3.4.2'
  sha256 '81fc14ee0450076de00396502b7b9963167be1afbaf4644d08d8e361758feb07'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
