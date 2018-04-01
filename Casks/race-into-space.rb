cask 'race-into-space' do
  version '1.1.0.286'
  sha256 'f22838888be4f456b107fd4d527474fdeae96ce5c3f3cfda623e736411e8c33c'

  # downloads.sourceforge.net/raceintospace was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/raceintospace/Race_Into_Space_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/raceintospace/rss',
          checkpoint: '8f63391eac075c539902d03a772cea425ef059eca1c759d661f235551d1d62bc'
  name 'Race Into Space'
  homepage 'http://www.raceintospace.org/'

  app 'Race Into Space.app'
end
