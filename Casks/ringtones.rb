cask 'ringtones' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/ringtones/Ringtones.zip'
  appcast 'https://files.thelittleappfactory.com/ringtones/appcast.xml',
          :checkpoint => 'b8bee0762970d4528aa5e9c4fc80ef569ec966afcad8c7a77ce74fc8373cc6a7'
  name 'Ringtones'
  homepage 'http://thelittleappfactory.com/ringtones/'
  license :commercial

  app 'Ringtones.app'
end
