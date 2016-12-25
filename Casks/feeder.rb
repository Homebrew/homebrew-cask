cask 'feeder' do
  version '3.3.6'
  sha256 'bde2f43684ae01b1929a209ab750766f6eefc01cb4261fd2a16f1a4bc8932e3b'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '2759cf02ef20876df691ab6d13f23ae5c95571d7ff8f721f633dc62ad2fe9cc6'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
