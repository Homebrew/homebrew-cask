cask 'paintcode' do
  version :latest
  sha256 :no_check

  # pixelcut.com is the official download host per the appcast feed
  url 'https://www.pixelcut.com/paintcode/paintcode.zip'
  appcast 'https://www.pixelcut.com/paintcode/appcast.xml',
          :sha256 => 'eeecc5760ba2d0c726cb7e1b23264314f99defc16832e0e7b6881af1cd97540f'
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode.app'
end
