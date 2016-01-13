cask 'ringtones' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/ringtones/Ringtones.zip'
  appcast 'https://files.thelittleappfactory.com/ringtones/appcast.xml',
          :sha256 => '283290ddd9959953ac0fc3e6d77ddb28e536d33eeaff8bfe26e25941dd608110'
  name 'Ringtones'
  homepage 'http://thelittleappfactory.com/ringtones/'
  license :commercial

  app 'Ringtones.app'
end
