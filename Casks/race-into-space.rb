cask 'race-into-space' do
  version '1.1.0.286'
  sha256 'fff9bd3a9410a44cd0e44ba18b60ad6d39f01a63c6c4267b53e5a10c5b76a328'

  # downloads.sourceforge.net/raceintospace was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/raceintospace/Race_Into_Space_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/raceintospace/rss',
          checkpoint: '8f63391eac075c539902d03a772cea425ef059eca1c759d661f235551d1d62bc'
  name 'Race Into Space'
  homepage 'http://www.raceintospace.org/'

  app 'Race Into Space.app'
end
