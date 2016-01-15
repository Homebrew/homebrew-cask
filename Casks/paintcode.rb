cask 'paintcode' do
  version :latest
  sha256 :no_check

  # pixelcut.com is the official download host per the appcast feed
  url 'https://www.pixelcut.com/paintcode/paintcode.zip'
  appcast 'https://www.pixelcut.com/paintcode/appcast.xml',
          :checkpoint => '0ba8b4aab06a63a1fb7eeae7fada0bc7e243a929143c8d7e3dcac35a4d111237'
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode.app'
end
