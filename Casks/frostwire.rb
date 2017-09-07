cask 'frostwire' do
  version '6.5.6'
  sha256 '65e1eee77ed8da863b2962ccae09e333ae1bfc69732c839e662d14c77f06e419'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '0ae1ad63804e445824f9c6454ad2a46491ee1e97c9a409f868f893b579d62230'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
