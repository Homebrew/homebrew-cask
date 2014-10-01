class Feeder < Cask
  version '2.5.1'
  sha256 '8c3334e7eccff45006707c44257eb5ab7946b6c4f51dae0fecf8a3552c6168ae'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder25.xml'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :unknown

  app 'Feeder.app'
end
