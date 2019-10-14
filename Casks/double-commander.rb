cask 'double-commander' do
  version '0.9.6-9018'
  sha256 '91344302bb70eb477bb06e36e154e4dc6092990c9638773f22c653b3b9d9a2df'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.cocoa.x86_64.zip"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
