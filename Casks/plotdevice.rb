cask :v1 => 'plotdevice' do
  version '0.10.0'
  sha256 '8c224f228c5b014e76925339171f4207a0b4a09f595500703d791cb689a32e8d'

  url "http://plotdevice.io/app/PlotDevice_app-#{version}.zip"
  name 'PlotDevice'
  appcast 'http://plotdevice.io/app.xml',
          :sha256 => '9a4327cb2b20c88921825197fb7b64daa382e59f8f8262dbc93f0236cf75ed4e'
  homepage 'http://plotdevice.io/'
  license :oss

  app 'PlotDevice.app'
end
