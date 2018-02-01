cask 'feeder' do
  version '3.5.8'
  sha256 '1f6cdd8bff9b5863c85b8e3566b29e0f579dd595b69ea0b2be29e082cf206099'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '072f99047e4f177e6b9f2c5e838ad828f6fe5c5d8f60f2331b628472eba5edf1'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
