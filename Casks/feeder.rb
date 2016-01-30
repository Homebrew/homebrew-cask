cask 'feeder' do
  version '3.1.5'
  sha256 '75527d081ff11a00da35263e17f1dd9a61a2c49b446298bdd83e88f37fa8bb16'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          checkpoint: '7872708d36ebb3e56ada48bed2ea5331d079cf2553ed17cca6d0a0e95c94c3d3'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
