cask 'iso-flock-standalone' do
  version '1.5.3'
  sha256 '5f2765b12519f021bc4305e491f7c2ebd55ca7279f379864f6827dea1cdd5166'

  url "http://swarms.cc/downloads/standalone/IsoFlockStandalone_#{version.delete('.')}.zip"
  name 'ISO-Flock'
  homepage 'http://swarms.cc/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ISO-Flock-Standalone.app'
end
