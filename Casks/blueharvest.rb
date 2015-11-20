cask :v1 => 'blueharvest' do
  version '6.3.3'
  sha256 '26fb102f91fe6b884942790450c1f7c48c1c730cc2eb7a07e8133a82928dabd5'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          :sha256 => 'f77096fccaa1a6f2ce2cd0c5ef6ac4c4b9197b67fe274cf63599bc12c3452084'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
