cask :v1 => 'ripit' do
  version :latest
  sha256 :no_check

  url 'http://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml'
  homepage 'http://thelittleappfactory.com/ripit/'
  license :unknown    # todo: improve this machine-generated value

  app 'RipIt.app'
end
