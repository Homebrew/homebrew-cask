cask 'diskmaker-x' do
  version '7'
  sha256 'd0c80961ca06dca436c0c784e8779defe56a0675d032f054064215a1b193a184'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  appcast 'https://diskmakerx.com/feed/',
          checkpoint: 'cde4b4adc3d2988a6616df0856c1f77ccb599ff516993c3a65cb2728909f6ae3'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major} for High Sierra.app"
end
