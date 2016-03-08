cask 'feeder' do
  version '3.1.6'
  sha256 'cfd4da10bf6680be455d674b0d0ec7168cc04f74bdc5c1dcd7bd3a83ce42a9a0'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          checkpoint: '50b32caab74296e0270eb34c6fa733725ddac21d4296bfbdc1005c991df17736'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
