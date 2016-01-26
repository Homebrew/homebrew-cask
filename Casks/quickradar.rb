cask 'quickradar' do
  version '1.0b1'
  sha256 '4b40450a5710d9b6efc33051bc2f611b0c88e3d5f387a5fdd1a90773d28d90a8'

  url "http://www.quickradar.com/#{version}.zip"
  appcast 'http://www.quickradar.com/appcast.xml',
          checkpoint: '3f381e6722f6e62a46908cf73925e498e4ba2175dc08f37623d989b08dcb7721'
  name 'QuickRadar'
  homepage 'http://www.quickradar.com/'
  license :bsd

  app 'QuickRadar.app'
end
