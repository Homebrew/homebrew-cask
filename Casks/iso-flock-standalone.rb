cask 'iso-flock-standalone' do
  version '1.6.0'
  sha256 '76011ab98aa915bb67a912c6da6b842ad792dd154c5045026a06107c0fb51da4'

  url "http://swarms.cc/downloads/standalone/IsoFlockStandalone_#{version.no_dots}.zip"
  name 'ISO-Flock'
  homepage 'http://swarms.cc/'

  app 'ISO-Flock-Standalone.app'
end
