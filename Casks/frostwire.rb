cask 'frostwire' do
  version '6.6.6'
  sha256 '4c35a1e9e42d10cbec0b28a686e6c59f05bd937fcec9bf05aafbbd987c8a262e'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '792b9f013ce4fc73be733ce8475d7e6bb643183edddb2f5d571e092e0a9c3550'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
