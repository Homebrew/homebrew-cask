cask 'irip' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/iRip2/iRip.zip'
  appcast 'https://files.thelittleappfactory.com/iRip2/appcast.xml',
          :sha256 => 'a4b4db7521ac5d24eff02cfc8405eb7f2e323677483a28433970c774ea733641'
  name 'iRip'
  homepage 'http://thelittleappfactory.com/irip/'
  license :commercial

  app 'iRip.app'
end
