cask 'paintcode' do
  version '2.4'
  sha256 '7588a5cc8a009177b0d016bea5f48e63a5784eff001d65bc6029faecf9728624'

  # pixelcut.com is the official download host per the appcast feed
  url 'https://www.pixelcut.com/paintcode/paintcode.zip'
  appcast 'https://www.pixelcut.com/paintcode/appcast.xml',
          checkpoint: '0ba8b4aab06a63a1fb7eeae7fada0bc7e243a929143c8d7e3dcac35a4d111237'
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode.app'
end
