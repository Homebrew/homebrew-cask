cask 'feeder' do
  version '3.1.4'
  sha256 '925cbf17149dc84632be10a142a0f238231ce72d8736528a872c9d44f47e451d'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => '4daf79a0cb6b322065af5776464cb1d034561cfde3d6d7e482b90b968ad33fd4'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
