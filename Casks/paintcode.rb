cask :v1 => 'paintcode' do
  version :latest
  sha256 :no_check

  url 'http://www.pixelcut.com/paintcode/paintcode.zip'
  appcast 'http://www.pixelcut.com/paintcode/appcast.xml'
  homepage 'http://www.paintcodeapp.com/'
  license :unknown

  app 'PaintCode.app'
end
