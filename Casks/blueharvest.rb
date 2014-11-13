cask :v1 => 'blueharvest' do
  version '6.1.2'
  sha256 '51ce55e1cadad80abf198088459e378c28ee7695c23f1ac7f6a48919c4f42c06'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.gsub('.','')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest.xml',
          :sha256 => 'c07a961d3e61d0d607242fdab31118520e31b13e6f4f929060988e2d874029d4'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
