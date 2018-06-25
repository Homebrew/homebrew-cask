cask 'flexiglass' do
  version '1.6.1-12795'
  sha256 '29d1322239efde57e87dd75fefc2fa59aac29e509dd1287ec86d3ee11efa1828'

  url "https://downloads.nulana.com/flexiglass/Flexiglass-#{version}.zip"
  appcast 'https://downloads.nulana.com/flexiglass/appcast.xml'
  name 'Flexiglass'
  homepage 'https://nulana.com/flexiglass/'

  app 'Flexiglass.app'
end
