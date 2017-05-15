cask 'plotdevice' do
  version '0.10.0'
  sha256 '8c224f228c5b014e76925339171f4207a0b4a09f595500703d791cb689a32e8d'

  url "http://plotdevice.io/app/PlotDevice_app-#{version}.zip"
  appcast 'http://plotdevice.io/app.xml',
          checkpoint: '49c785b01def56f98d686695f46a6b905744c9acf53cd56c3085f8a0297519c3'
  name 'PlotDevice'
  homepage 'http://plotdevice.io/'

  app 'PlotDevice.app'
end
