class Ripit < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://files.thelittleappfactory.com/ripit/RipIt.zip'
  appcast 'https://files.thelittleappfactory.com/ripit/appcast.xml'
  homepage 'http://thelittleappfactory.com/ripit/'

  link 'RipIt.app'
end
