cask 'double-commander' do
  version '0.9.4-8936'
  sha256 'f4b1a1302fb1c33c579349776221ea1e6e8c45958dfd0409a95af2f5bc73af5a'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
