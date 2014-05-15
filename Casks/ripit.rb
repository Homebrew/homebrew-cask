class Ripit < Cask
  url 'http://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml'
  homepage 'http://thelittleappfactory.com/ripit/'
  version 'latest'
  sha256 :no_check
  link 'RipIt.app'
end
