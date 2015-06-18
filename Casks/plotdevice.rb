cask :v1 => 'plotdevice' do
  version '0.9.4'
  sha256 '70c7e484aa6de254095dce7ff1005e9b778b1fc02d4f8d27f0ee20ecdebba5c2'

  url "http://plotdevice.io/app/PlotDevice_app-#{version}.zip"
  name 'PlotDevice'
  appcast 'http://plotdevice.io/app.xml',
          :sha256 => 'ff2cccb9627a86b963d74727ae75c4dc2c1f90e3574fce71218b631d81b168a3'
  homepage 'http://plotdevice.io/'
  license :oss

  app 'PlotDevice.app'
end
