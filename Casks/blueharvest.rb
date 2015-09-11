cask :v1 => 'blueharvest' do
  version '6.2.1'
  sha256 '3ecb68a17a82a73d90c2451418114dcd925ed18da8bc4c03ccd5aeae15c0f24e'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          :sha256 => '0a6a7811abf74d36ee9fb78ce2b208fbded639da602f3900a2cda0865f17bda0'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
