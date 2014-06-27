class Evom < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://files.thelittleappfactory.com/evom/Evom.zip'
  appcast 'https://files.thelittleappfactory.com/evom/appcast.xml'
  homepage 'http://thelittleappfactory.com/evom/'

  link 'Evom.app'
end
