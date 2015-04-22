cask :v1 => 'paintcode' do
  version '2.3.1'
  sha256 '6355a0ea775de821982e0110fa094b5995ba37daf612363b75d24cf74be7a702'

  url "http://www.paintcodeapp.com/content/versions/#{version}/paintcode-trial.zip"
  appcast 'http://www.pixelcut.com/paintcode/appcast.xml'
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode Trial.app'
end
