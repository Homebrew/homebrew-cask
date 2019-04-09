cask 'feeder' do
  version '3.6.4'
  sha256 '6b82440fcfd70c7d77e7dfbefe8bb68d876c0bda858e791fcaf64c216ba9f0ee'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
