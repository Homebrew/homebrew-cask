cask 'feeder' do
  version '3.4.2'
  sha256 '57ebacad58e8ad175d8a81781689bc368c84b768c165e965771ce1f7ba22af2c'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '7301447811abcdca273acf876789dd4953e3f02d39d88192d6486d993e111f25'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
