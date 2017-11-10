cask 'frostwire' do
  version '6.6.0'
  sha256 'd6cc9ba8dc514eaed2092db29ea6a2ddae79bad1df9d4ffd6e76b45eeea8baa0'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '6b1194f4d2e2b83acb9fc8abf737755d64d35bf7220120be9da471a4d7a44844'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
