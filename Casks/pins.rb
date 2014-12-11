cask :v1 => 'pins' do
  version :latest
  sha256 :no_check

  url 'http://pinsapp.com/download/Pins.dmg'
  appcast 'http://pinsapp.com/appcast.xml'
  homepage 'http://pinsapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Pins.app'
end
