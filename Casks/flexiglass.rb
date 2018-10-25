cask 'flexiglass' do
  version '1.7-12830'
  sha256 'bd0647bdc3de6ffaa78efd6f171e37a04c990910db2e4d59991a2846d3b57e9d'

  url "https://downloads.nulana.com/flexiglass/Flexiglass-#{version}.zip"
  appcast 'https://downloads.nulana.com/flexiglass/appcast.xml'
  name 'Flexiglass'
  homepage 'https://nulana.com/flexiglass/'

  app 'Flexiglass.app'
end
