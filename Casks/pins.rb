cask 'pins' do
  version :latest
  sha256 :no_check

  url 'http://pinsapp.com/download/Pins.dmg'
  appcast 'http://pinsapp.com/appcast.xml',
          :checkpoint => 'dcdf2060c91e5defe7a2387bea27047a979514caa496dc6de427ac8580793040'
  name 'Pins'
  homepage 'http://pinsapp.com/'
  license :commercial

  app 'Pins.app'
end
