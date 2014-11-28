cask :v1 => 'plotdevice' do
  version '0.9.4'
  sha256 '70c7e484aa6de254095dce7ff1005e9b778b1fc02d4f8d27f0ee20ecdebba5c2'

  url "http://plotdevice.io/app/PlotDevice_app-#{version}.zip"
  homepage 'http://plotdevice.io/'
  license :oss

  app 'PlotDevice.app'
end
