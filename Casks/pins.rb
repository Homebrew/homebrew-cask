cask 'pins' do
  version :latest
  sha256 :no_check

  url 'http://pinsapp.com/download/Pins.dmg'
  appcast 'http://pinsapp.com/appcast.xml',
          :sha256 => '39401094030ecc643ab84cd6d1718a28b76693764295de7157ff853aaaae6eb8'
  name 'Pins'
  homepage 'http://pinsapp.com/'
  license :commercial

  app 'Pins.app'
end
