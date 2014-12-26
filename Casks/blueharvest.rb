cask :v1 => 'blueharvest' do
  version '6.1.4'
  sha256 'e646b82bd619595c8329e1d84ef471f5a42dd1b20ba558bc4a53135291b393d0'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.gsub('.','')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest.xml',
          :sha256 => 'c07a961d3e61d0d607242fdab31118520e31b13e6f4f929060988e2d874029d4'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
