cask 'flexiglass' do
  version '1.6.1-12795'
  sha256 '29d1322239efde57e87dd75fefc2fa59aac29e509dd1287ec86d3ee11efa1828'

  url "https://downloads.nulana.com/flexiglass/Flexiglass-#{version}.zip"
  appcast 'https://downloads.nulana.com/flexiglass/appcast.xml',
          checkpoint: '09ad34728a636f60b341878896d1547bc2c72fd64560313c8f087a6504e186a6'
  name 'Flexiglass'
  homepage 'https://nulana.com/flexiglass/'

  app 'Flexiglass.app'
end
