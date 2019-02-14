cask 'double-commander' do
  version '0.9.0-8649'
  sha256 '189d2a9fa450a5fce355d1db750c67a646c730c29634c1e0cc66676f3f2552ca'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
