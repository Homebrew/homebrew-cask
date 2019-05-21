cask 'double-commander' do
  version '0.9.3-8847'
  sha256 'ecb8c9335ae178c5e1f29c0781315dc712e9567470d43c21ea6ffb517e0eb7da'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
