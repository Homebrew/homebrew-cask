cask 'blueharvest' do
  version '6.3.3'
  sha256 '26fb102f91fe6b884942790450c1f7c48c1c730cc2eb7a07e8133a82928dabd5'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          :sha256 => '89141150318fa66224063ba89050062fa2f44b800bb8269e75529426f8c0b60c'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
