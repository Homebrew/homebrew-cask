cask :v1 => 'quickradar' do
  version '1.0b1'
  sha256 '4b40450a5710d9b6efc33051bc2f611b0c88e3d5f387a5fdd1a90773d28d90a8'

  url "http://www.quickradar.com/#{version}.zip"
  appcast 'http://www.quickradar.com/appcast.xml',
          :sha256 => 'a619b28824bf188921dc93eb9d475111c0f5d68ea3ec865562d922a7c312d1f3'
  homepage 'http://www.quickradar.com/'
  license :unknown

  app 'QuickRadar.app'
end
