cask 'frostwire' do
  version '6.4.9'
  sha256 '99c016a3dad8aa897f6d1fc488b5df4cfd17667395b52df2ae6ce1aeabb1cb7a'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '4f9f4c920e0ca56fb3349c0c682be75b4e469c17fd93d3e613039dc65e4d393c'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
