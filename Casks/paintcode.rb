cask 'paintcode' do
  version '3.4.4'
  sha256 'dfa01032a4fec701fbf0ac9a3593d3413249e83712817f2384168a9f39eb77d4'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
