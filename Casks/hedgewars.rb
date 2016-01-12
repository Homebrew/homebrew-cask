cask 'hedgewars' do
  version '0.9.22'
  sha256 'adc0b6dd3b47de115e85db1cb72841836444c0ebc77caee8139bfd6561e28fe8'

  # gna.org is the official download host per the vendor homepage
  url "http://download.gna.org/hedgewars/Hedgewars-#{version}.dmg"
  appcast 'http://www.hedgewars.org/download/appcast.xml',
          :sha256 => 'a81ad4cb8ab3ce1cde69c0ac0623a9ff93289adf07b2306a2553731c00025361'
  name 'Hedgewars'
  homepage 'http://hedgewars.org'
  license :gpl

  app 'Hedgewars.app'
end
