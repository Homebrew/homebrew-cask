cask 'feeder' do
  version '3.5.10'
  sha256 'f12126880083a841f9055d5b6a5a5cda150d0fb872d5d2569a15c7c7461e65b0'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
