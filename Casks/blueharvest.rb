cask :v1 => 'blueharvest' do
  version '6.1.3'
  sha256 '6dde179090ce552da9d5cfc188e8b643a7beab8a923b90c0365b7c440f8018db'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.gsub('.','')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest.xml',
          :sha256 => 'c07a961d3e61d0d607242fdab31118520e31b13e6f4f929060988e2d874029d4'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
