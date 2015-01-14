cask :v1 => 'feeder' do
  version '2.5.1'
  sha256 '8c3334e7eccff45006707c44257eb5ab7946b6c4f51dae0fecf8a3552c6168ae'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder25.xml',
          :sha256 => '059bbc96d95b4d877978460f268730c8013640006696ead0af53221a7b596115'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Feeder.app'
end
