cask 'feeder' do
  version '3.6.9'
  sha256 'da49660d14b271d95725c20b494f83147a1a46bc33c8a3351f1f3cdad778d4d4'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
