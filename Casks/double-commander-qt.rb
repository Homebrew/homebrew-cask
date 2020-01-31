cask 'double-commander-qt' do
  version '0.9.7-9235'
  sha256 '9eb09d7d407ee88fae828966c1a460bce508db97e97ebea0559fdd20b9380a4d'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander Qt'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app', target: 'Double Commander Qt.app'
end
