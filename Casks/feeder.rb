cask 'feeder' do
  version '3.6.6'
  sha256 '99c096d0386e772b90e0cb461714bbef9c0a3b5e3a744dffc4fa4023a21d1178'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
