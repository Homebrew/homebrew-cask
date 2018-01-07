cask 'feeder' do
  version '3.5.6'
  sha256 '267e4e8b50345d53948d378a9f36f90edbe7f4c7023b8e22e2406ede51bcfe93'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '4f3d28521c56636c0b1264476c32ce1374ba4522920f641ee3d9f320f24c1a75'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
