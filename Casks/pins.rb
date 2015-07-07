cask :v1 => 'pins' do
  version :latest
  sha256 :no_check

  url 'http://pinsapp.com/download/Pins.dmg'
  appcast 'http://pinsapp.com/appcast.xml'
  name 'Pins'
  homepage 'http://pinsapp.com/'
  license :commercial

  app 'Pins.app'
end
