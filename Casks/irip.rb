cask :v1 => 'irip' do
  sha256 :no_check
  version :latest

  url 'http://files.thelittleappfactory.com/iRip2/iRip.zip'
  appcast 'https://files.thelittleappfactory.com/iRip2/appcast.xml'
  name 'iRip'
  homepage 'http://thelittleappfactory.com/irip/'
  license :commercial

  app 'iRip.app'
end
