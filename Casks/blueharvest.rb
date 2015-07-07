cask :v1 => 'blueharvest' do
  version '6.2.1'
  sha256 '3ecb68a17a82a73d90c2451418114dcd925ed18da8bc4c03ccd5aeae15c0f24e'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.gsub('.','')}.dmg"
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
