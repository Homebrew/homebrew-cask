cask 'paintcode' do
  version :latest
  sha256 :no_check

  # pixelcut.com is the official download host per the appcast feed
  url 'https://www.pixelcut.com/paintcode/paintcode.zip'
  appcast 'https://www.pixelcut.com/paintcode/appcast.xml',
          :sha256 => 'f904b33340e253f65976837bed12e0e8f9ad5e289263dd933f0b4edef5eb064a'
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode.app'
end
