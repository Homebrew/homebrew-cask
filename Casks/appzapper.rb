cask :v1 => 'appzapper' do
  version :latest
  sha256 :no_check

  url 'http://www.appzapper.com/downloads/appzapper.dmg'
  appcast 'http://www.appzapper.com/az2appcast.xml'
  homepage 'http://www.appzapper.com/'
  license :commercial

  app 'AppZapper.app'
end
