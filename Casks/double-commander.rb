cask 'double-commander' do
  version '0.9.7-9235'
  sha256 '0fa494197b1db249efb82a5f0e5c255b6656f2c507de884b7ef27b0c305a0453'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.cocoa.x86_64.zip"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
