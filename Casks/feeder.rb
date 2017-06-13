cask 'feeder' do
  version '3.4.4'
  sha256 '52186f753d7d92067dff371aaf983f62e8fc49eb879cd3911de783a2119d60f9'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '038e7b835bb88b5f1c70473ad3b1120d95031d5c25436fa777f5a1b6f22a65a6'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
