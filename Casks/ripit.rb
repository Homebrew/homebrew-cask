cask :v1 => 'ripit' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml'
  name 'RipIt'
  homepage 'http://thelittleappfactory.com/ripit/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RipIt.app'
end
