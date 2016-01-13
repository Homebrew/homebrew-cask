cask 'irip' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/iRip2/iRip.zip'
  appcast 'https://files.thelittleappfactory.com/iRip2/appcast.xml',
          :checkpoint => '67468e37f2a1b519de068309d749a11f991b6d3a2eec8f718e4437fafbc6af12'
  name 'iRip'
  homepage 'http://thelittleappfactory.com/irip/'
  license :commercial

  app 'iRip.app'
end
