cask :v1 => 'paintcode' do
  version '2.3.2'
  sha256 '7a91f926ff352659abb5a189d0533c572a2b0bdced93d7b8bb94692d1b9e3487'

  url "http://www.paintcodeapp.com/content/versions/#{version}/paintcode-trial.zip"
  appcast 'http://www.pixelcut.com/paintcode/appcast.xml'
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode Trial.app'
end
