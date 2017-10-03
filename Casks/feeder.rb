cask 'feeder' do
  version '3.5.1'
  sha256 'abe84f8afc0ede28d42fe8292bc7f244550e80aa7705f21417f9c6f8a09effaa'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: 'da458d9d174a4c5b4b13d17503fa1fa3647a1a8c03dfcabb776f5265b96f4d86'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
