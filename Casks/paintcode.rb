cask :v1 => 'paintcode' do
  version '2.2.4'
  sha256 '645f0042a5d2111905482b0a574004c83f7e1d053f6e0d1b992ebbe57daf2776'

  url "http://www.paintcodeapp.com/content/versions/#{version}/paintcode-trial.zip"
  appcast 'http://www.pixelcut.com/paintcode/appcast.xml'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode.app'
end
