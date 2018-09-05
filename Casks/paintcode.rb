cask 'paintcode' do
  version '3.4'
  sha256 '9617c04cd1dd998d6a3f2fb0aeb0f6eb599d7d4a261b02207d8dac58812a6257'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
