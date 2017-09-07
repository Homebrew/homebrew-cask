cask 'feeder' do
  version '3.4.6'
  sha256 '7992036e6ab5a5df7ee077aeba926d745a02a89a83b37ff5d1d62fd669c48978'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: 'eb54f81d111e9b6afa48b9d41c56edae9341e3b0a39464ed5510458e8ed9ab87'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
