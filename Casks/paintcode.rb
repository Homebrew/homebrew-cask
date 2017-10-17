cask 'paintcode' do
  version '3.3.3'
  sha256 'd0ab676ed46949c544f07aa7a076d4995c8731a4114283aefe54878cf2378611'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml",
          checkpoint: 'c263ea15e0614837f297bf3c753c2b15dddd5a7c3ed708b74c122f8e44f50a8f'
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
