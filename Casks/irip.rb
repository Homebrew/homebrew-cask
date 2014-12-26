cask :v1 => 'irip' do
  sha256 :no_check
  version :latest

  url 'http://files.thelittleappfactory.com/iRip2/iRip.zip'
  appcast 'https://files.thelittleappfactory.com/iRip2/appcast.xml'
  homepage 'http://thelittleappfactory.com/irip/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iRip.app'
end
