cask 'feeder' do
  version '3.5.9'
  sha256 '03e3cdb567b6a023b3694e89e7f8061cd51f66f30b9603f6be4b69e94136b111'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '1005915612df1be9b1ce4d99d19ab2ad3c317e0759e38697abf6283ab6b5a06d'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
