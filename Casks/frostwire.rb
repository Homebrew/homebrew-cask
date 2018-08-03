cask 'frostwire' do
  version '6.7.1'
  sha256 '62429ff4b787b2b35e1c9852b49a4cea7f0dfc29c0f035dd6e0bf6914afcdb60'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast 'https://sourceforge.net/projects/frostwire/rss'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
