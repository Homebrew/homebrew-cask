cask 'quickradar' do
  version '1.0b1'
  sha256 '4b40450a5710d9b6efc33051bc2f611b0c88e3d5f387a5fdd1a90773d28d90a8'

  url "http://www.quickradar.com/#{version}.zip"
  appcast 'http://www.quickradar.com/appcast.xml',
          :sha256 => '72e49641f37b6e82a1896bb7887864382d755a67b5d25dabc7c26ff13e6783de'
  name 'QuickRadar'
  homepage 'http://www.quickradar.com/'
  license :bsd

  app 'QuickRadar.app'
end
