cask :v1 => 'irip' do
  sha256 :no_check
  version :latest

  url 'http://files.thelittleappfactory.com/iRip2/iRip.zip'
  appcast 'https://files.thelittleappfactory.com/iRip2/appcast.xml'
  homepage 'http://thelittleappfactory.com/irip/'
  license :unknown    # todo: improve this machine-generated value

  app 'iRip.app'
end
