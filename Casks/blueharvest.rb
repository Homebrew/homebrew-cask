class Blueharvest < Cask
  version '5.5.9'
  sha256 '4711a2ecdaee8364ef7e63d8bfb34d5539cd0e8f20b95fe31028bbcc6b22684f'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.gsub('.','')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest.xml',
          :sha256 => 'c07a961d3e61d0d607242fdab31118520e31b13e6f4f929060988e2d874029d4'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
