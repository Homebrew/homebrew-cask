cask 'double-commander' do
  version '0.9.5-8947'
  sha256 '924e9a25b872ccbb91eacb44bc4a7a4f99a6136c718d2d94a87768deb68cfa85'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
