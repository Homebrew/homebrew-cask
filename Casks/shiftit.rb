cask :v1 => 'shiftit' do
  version '1.6.3'
  sha256 '3b01d74cc39e4efad64b2c9b135bea528730cb750c55a386bf74e1203b92ca68'

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  # url 'https://github.com/fikovnik/ShiftIt/releases.atom'
  name 'ShiftIt'
  appcast 'https://raw.github.com/fikovnik/ShiftIt/master/release/appcast.xml',
          :sha256 => '04830e525345d734515b717ef2f68a1f8e2bba9c8de940bd2dc072f992f21a08'
  homepage 'https://github.com/fikovnik/ShiftIt'
  license :gpl

  app 'ShiftIt.app'
end
