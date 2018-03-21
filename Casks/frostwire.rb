cask 'frostwire' do
  version '6.6.3'
  sha256 '861150255cdc042bcb953bc73f2b1307a92981f3b9fbf747c23186659592ab12'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: 'd301b9e4067329d507c7a1ca6d9f2d3964b3dacdd2054f79a2919246385f8705'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
