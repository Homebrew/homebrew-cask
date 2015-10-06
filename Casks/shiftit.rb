cask :v1 => 'shiftit' do
  version '1.6.3'
  sha256 '3b01d74cc39e4efad64b2c9b135bea528730cb750c55a386bf74e1203b92ca68'

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  name 'ShiftIt'
  appcast 'https://raw.github.com/fikovnik/ShiftIt/develop/release/appcast.xml',
          :sha256 => '36095ab0df9c3c930a9a0e03e065ad9e3669273f3f77664d6637cb5930c3eeb9'
  homepage 'https://github.com/fikovnik/ShiftIt'
  license :gpl

  app 'ShiftIt.app'
end
