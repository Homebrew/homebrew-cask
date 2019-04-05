cask 'double-commander' do
  version '0.9.2-8761'
  sha256 'c84e7496022bc7511fe9b8aa15fba7820f57f5acdd79a821c7f87dbad98ed758'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
