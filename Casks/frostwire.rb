cask 'frostwire' do
  version '6.6.7'
  sha256 'bd892bd7fb3f077920dd09809243681fd2e5b50b48de8e0d99d77008f828a8dd'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: 'e00a70a06676e361616d76917bc32ff0d376d20a7b4a7502b38c9236c7082751'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
