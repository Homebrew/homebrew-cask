cask 'frostwire' do
  version '6.4.7'
  sha256 'f15d73d145009a41319aad7384731e9fffffe3c5ae930a9db92a844f99406170'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '3c4212b7442ba5b19b2d292efc5be41eb71628112aa499294f0971702f79a331'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
