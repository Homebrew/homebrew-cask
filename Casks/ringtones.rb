cask 'ringtones' do
  version '1.1.3'
  sha256 '459119df8f7895fe427c95a541df7c94477962c19ff5884a450afb3e5b867bd0'

  url 'https://files.thelittleappfactory.com/ringtones/Ringtones.zip'
  appcast 'https://files.thelittleappfactory.com/ringtones/appcast.xml',
          checkpoint: 'b8bee0762970d4528aa5e9c4fc80ef569ec966afcad8c7a77ce74fc8373cc6a7'
  name 'Ringtones'
  homepage 'http://thelittleappfactory.com/ringtones/'

  app 'Ringtones.app'
end
