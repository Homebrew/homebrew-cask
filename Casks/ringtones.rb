cask :v1 => 'ringtones' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/ringtones/Ringtones.zip'
  appcast 'https://files.thelittleappfactory.com/ringtones/appcast.xml'
  homepage 'http://thelittleappfactory.com/ringtones/'
  license :unknown

  app 'Ringtones.app'
end
