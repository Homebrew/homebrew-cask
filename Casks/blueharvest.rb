cask :v1 => 'blueharvest' do
  version '6.3.1'
  sha256 '2af18a53012d9472422ec802e09eb1de7d0a79db9b62eb385940927635c8ad2e'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          :sha256 => 'f77096fccaa1a6f2ce2cd0c5ef6ac4c4b9197b67fe274cf63599bc12c3452084'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
