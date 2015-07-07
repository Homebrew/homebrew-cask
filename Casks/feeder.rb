cask :v1 => 'feeder' do
  version '2.5.12'
  sha256 'd48c058a64f3850468aa3ede8c56ff2d6452e0afda5683199d50b2ec63685bda'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder25.xml',
          :sha256 => '10c7d4c97d51eea3a98199a34e7734effe35f4de2d2daedb1d6930864f99780f'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Feeder.app'
end
