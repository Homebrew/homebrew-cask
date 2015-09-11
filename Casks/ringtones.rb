cask :v1 => 'ringtones' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/ringtones/Ringtones.zip'
  appcast 'https://files.thelittleappfactory.com/ringtones/appcast.xml'
  name 'Ringtones'
  homepage 'http://thelittleappfactory.com/ringtones/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ringtones.app'
end
