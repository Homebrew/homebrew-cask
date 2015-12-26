cask 'ringtones' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/ringtones/Ringtones.zip'
  appcast 'https://files.thelittleappfactory.com/ringtones/appcast.xml',
          :sha256 => 'd367eeb825e7a4dc409fa8b7daee6644ef13a31b058f2395e4347490bbad01b3'
  name 'Ringtones'
  homepage 'http://thelittleappfactory.com/ringtones/'
  license :commercial

  app 'Ringtones.app'
end
