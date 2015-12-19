cask 'ringtones' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/ringtones/Ringtones.zip'
  appcast 'https://files.thelittleappfactory.com/ringtones/appcast.xml'
  name 'Ringtones'
  homepage 'http://thelittleappfactory.com/ringtones/'
  license :commercial

  app 'Ringtones.app'
end
