cask 'feeder' do
  version '3.3.2'
  sha256 '8d246407c536e338e90f78cb9c5a34258da323d4c6eb8df9eda2251293089660'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '9c813542a17194517e5a33342d0dcd1533f09ee6ead95a7a5fb0f1de1f722806'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app 'Feeder 3.app'
end
