class Ibettercharge < Cask
  url 'http://download.softorino.com/ibc/last/'
  appcast 'http://hook.softorino.com/ibc/appcast.xml'
  homepage 'http://softorino.com/ibettercharge/'
  version 'latest'
  sha256 :no_check
  link 'iBetterCharge.app'
end
