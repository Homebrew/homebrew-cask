class Flexiglass < Cask
  version 'latest'
  sha256 :no_check

  url 'http://downloads.nulana.com/flexiglass/Flexiglass.dmg'
  appcast 'http://downloads.nulana.com/flexiglass/appcast.xml'
  homepage 'http://nulana.com/flexiglass/'

  link 'Flexiglass.app'
end
