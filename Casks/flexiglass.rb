cask :v1 => 'flexiglass' do
  version :latest
  sha256 :no_check

  url 'http://downloads.nulana.com/flexiglass/Flexiglass.dmg'
  appcast 'http://downloads.nulana.com/flexiglass/appcast.xml'
  homepage 'http://nulana.com/flexiglass/'
  license :unknown

  app 'Flexiglass.app'
end
