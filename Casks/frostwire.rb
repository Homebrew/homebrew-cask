cask 'frostwire' do
  version '6.4.7'
  sha256 'e1223dc702203a953f35afab525f45f4971ac57ea89da10525105b717d6dca13'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '3c4212b7442ba5b19b2d292efc5be41eb71628112aa499294f0971702f79a331'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
