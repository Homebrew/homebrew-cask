cask 'feeder' do
  version '3.5.7'
  sha256 'ce0ff58e504854314fddefffefa571fb3ca3be346ca0e4a8a69752ff6d49311d'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '4ff6f7fa424ddfcaf2aed5311ae298835917545a2276d59acd63fdf39f8f8812'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
