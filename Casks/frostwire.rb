cask 'frostwire' do
  version '6.4.6'
  sha256 'edc23f818cf0a036003b3ca67bebd942c4f6af3098c35ce7e1f9b9cfcbed8e6e'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '7bc2380d6e95de62112c532e5de887e47813766ac26739dfaab5109496519db9'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
