cask 'double-commander' do
  version '0.9.1-8664'
  sha256 '78095b62b3692e571afa3cd481c3eb618243554436ae35e7d0ba3c5388ad6d10'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
