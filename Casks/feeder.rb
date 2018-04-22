cask 'feeder' do
  version '3.5.9'
  sha256 '228020aa239e9fc9616df0446fc8471d1f3578ab45a3fabc29353546090177d0'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '5d62ec3c33af738c5cd404334b79bea3921d98e685182740693d9f2bb5e30b51'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
