cask :v1 => 'feeder' do
  version '3.0.2'
  sha256 '2e8822498b1f644c2760704c790d29aa472c358c0d6fe2845dcc2f35d0acaf4b'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => 'd44a2c090bb5f68dbc5984be7685a5976ce4ac03e4ef1b02491d5bcd4868e4c2'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
