cask :v1 => 'blueharvest' do
  version '6.3.2'
  sha256 'd167a8ccd3ccd2931e68ca2961a9ca4a689e61cf23cd2ac79daf5605a0a5c163'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          :sha256 => 'f77096fccaa1a6f2ce2cd0c5ef6ac4c4b9197b67fe274cf63599bc12c3452084'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
