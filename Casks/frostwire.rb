cask 'frostwire' do
  version '6.7.4'
  sha256 '3e762e5c4af5e93e16d81c51b4a790bda52cc4e53cee2bd207cbeeced38eb980'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast 'https://sourceforge.net/projects/frostwire/rss'
  name 'FrostWire'
  homepage 'https://www.frostwire.com/'

  app 'FrostWire.app'
end
