cask :v1 => 'paintcode' do
  version :latest
  sha256 :no_check

  # pixelcut.com is the official download host per the appcast feed
  url 'http://www.pixelcut.com/paintcode/paintcode.zip'
  appcast 'http://www.pixelcut.com/paintcode/appcast.xml'
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode.app'
end
