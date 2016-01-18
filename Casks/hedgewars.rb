cask 'hedgewars' do
  version '0.9.22'
  sha256 'adc0b6dd3b47de115e85db1cb72841836444c0ebc77caee8139bfd6561e28fe8'

  # gna.org is the official download host per the vendor homepage
  url "http://download.gna.org/hedgewars/Hedgewars-#{version}.dmg"
  appcast 'http://www.hedgewars.org/download/appcast.xml',
          checkpoint: 'b568efa383a1243786b557c0d85dc0b3612afebcd310c77d91b5ec3c288a3264'
  name 'Hedgewars'
  homepage 'http://hedgewars.org'
  license :gpl

  app 'Hedgewars.app'
end
