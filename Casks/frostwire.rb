cask 'frostwire' do
  version '6.6.2'
  sha256 '73c25b793b50130136ab937749f6e0b2b4a943ea90dda8d28ae415ca4b81da66'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: 'a5673d497684b33cfcb334a961daad2a873812e09bff8611c11c78f569f05e3c'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
