cask 'pins' do
  version :latest
  sha256 :no_check

  url 'http://pinsapp.com/download/Pins.dmg'
  appcast 'http://pinsapp.com/appcast.xml',
          :checkpoint => '5c64de791ef112795cdbd0b98eeb582a8c66d26e74ec0cdeb1ab8cbc52c163ef'
  name 'Pins'
  homepage 'http://pinsapp.com/'
  license :commercial

  app 'Pins.app'
end
