cask 'feeder' do
  version '3.1.4'
  sha256 '925cbf17149dc84632be10a142a0f238231ce72d8736528a872c9d44f47e451d'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
<<<<<<< dce37e173006c7c99e24e54a431485a09808a3e0
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
=======
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
>>>>>>> change all appcast casks to use :checkpoint
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
