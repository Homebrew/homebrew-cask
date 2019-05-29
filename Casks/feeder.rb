cask 'feeder' do
  version '3.6.7'
  sha256 'f197322d4b94b089421b60b7a971ca5028edb206940ad17628728f2f9db5a1f1'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml"
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
