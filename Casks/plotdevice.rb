cask 'plotdevice' do
  version '0.10.0'
  sha256 '8c224f228c5b014e76925339171f4207a0b4a09f595500703d791cb689a32e8d'

  url "https://plotdevice.io/app/PlotDevice_app-#{version}.zip"
  appcast 'https://plotdevice.io/app.xml'
  name 'PlotDevice'
  homepage 'https://plotdevice.io/'

  app 'PlotDevice.app'
end
