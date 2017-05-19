cask 'frostwire' do
  version '6.5.1'
  sha256 '02c215975a4c7aa2b0693ab02a0fccce9675d072aa955518dae5b171f0dcf5e4'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '0ea2c01c793be51f738d4e6c0d260678816a4402f65bcbf4bd74ad29d10a0d89'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
