cask 'quickradar' do
  version '1.0b1'
  sha256 '4b40450a5710d9b6efc33051bc2f611b0c88e3d5f387a5fdd1a90773d28d90a8'

  url "http://www.quickradar.com/#{version}.zip"
  appcast 'http://www.quickradar.com/appcast.xml',
          :sha256 => '7d48eee6bf90ebdfa63c5f053b81b2243bea2e642a2c2f931599e3bd43b1353c'
  name 'QuickRadar'
  homepage 'http://www.quickradar.com/'
  license :bsd

  app 'QuickRadar.app'
end
