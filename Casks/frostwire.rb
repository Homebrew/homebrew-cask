cask 'frostwire' do
  version '6.6.5'
  sha256 '177c927f3274666f23ae1503f9174981aaf83965b5539d48f85604f5674562b1'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: 'aa9a48249a252f6bfad65b9ca3725aa727cf69aae649d8b8754c81eb765a6ac0'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
