cask 'double-commander' do
  version '0.9.5-8947'
  sha256 '4147954fa8dc47d0e4f1393452091a4900ba091edcf8c90252ccb40d0e7a78a3'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.cocoa.x86_64.zip"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
