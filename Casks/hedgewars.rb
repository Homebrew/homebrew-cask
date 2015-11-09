cask :v1 => 'hedgewars' do
  version '0.9.22'
  sha256 'adc0b6dd3b47de115e85db1cb72841836444c0ebc77caee8139bfd6561e28fe8'

  # gna.org is the official download host per the vendor homepage
  url "http://download.gna.org/hedgewars/Hedgewars-#{version}.dmg"
  appcast 'http://www.hedgewars.org/download/appcast.xml',
          :sha256 => '7df122cbe90fc78850944eefe1c95d79e3896d30ec21e10eca9621f29a8357eb'
  name 'Hedgewars'
  homepage 'http://hedgewars.org'
  license :gpl

  app 'Hedgewars.app'
end
