cask 'feeder' do
  version '3.1.8'
  sha256 '173f91170652a7296adb51deccc5aa7e305856aec9012e5ed81c8431850e92c4'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          checkpoint: 'ba6194da9ef1e3e3ee1de3e3f9b11dbae06663040c6869dc8c04d2174dca1bad'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
