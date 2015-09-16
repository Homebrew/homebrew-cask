cask :v1 => 'blueharvest' do
  version '6.2.2'
  sha256 'e1e9c93e5537444f314b0bb18c6f7bed9e34d43d8f8502d0755fca4340e7a6a6'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          :sha256 => 'f77096fccaa1a6f2ce2cd0c5ef6ac4c4b9197b67fe274cf63599bc12c3452084'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
