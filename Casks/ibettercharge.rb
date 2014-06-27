class Ibettercharge < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://download.softorino.com/ibc/last/'
  appcast 'http://hook.softorino.com/ibc/appcast.xml'
  homepage 'http://softorino.com/ibettercharge/'

  link 'iBetterCharge.app'
end
