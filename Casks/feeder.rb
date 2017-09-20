cask 'feeder' do
  version '3.5'
  sha256 'c19e9b5d4819931c91b2581ef990419c85041edab849f04239e022bc1850f1d6'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '6d49c00af99ecf3b8cae9e88e31de55bddecdcc15b854aa2065c85d4991a496e'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
