cask 'plotdevice' do
  version '0.10.0'
  sha256 '8c224f228c5b014e76925339171f4207a0b4a09f595500703d791cb689a32e8d'

  url "http://plotdevice.io/app/PlotDevice_app-#{version}.zip"
  appcast 'http://plotdevice.io/app.xml',
          checkpoint: '4694267b346354a17e45e5a15cd3c108f88bd32c30b328c6273ce3b9d00d9aab'
  name 'PlotDevice'
  homepage 'http://plotdevice.io/'
  license :oss

  app 'PlotDevice.app'
end
