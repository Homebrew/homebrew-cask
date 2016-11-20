cask 'race-into-space' do
  version '1.1.0.286'
  sha256 'f22838888be4f456b107fd4d527474fdeae96ce5c3f3cfda623e736411e8c33c'

  # downloads.sourceforge.net/raceintospace was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/raceintospace/Race_Into_Space_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/raceintospace/rss',
          checkpoint: '9a4ae7ec0dc399823bec3e9b24c808beab9889276360891bf382b3ef5eb56640'
  name 'Race Into Space'
  homepage 'http://www.raceintospace.org/'

  app 'Race Into Space.app'
end
