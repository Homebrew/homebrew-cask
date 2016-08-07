cask 'feeder' do
  version '3.2.6'
  sha256 'f8239ca1abb39fde82045f763b52ee0464a415d8d1ec020e68f69d99de78aae2'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          checkpoint: '80f581992c5eb8f479d4c154a1c4129bbdb8211976d6cf24d37b0953d805c3a8'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
