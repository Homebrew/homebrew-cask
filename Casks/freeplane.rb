cask 'freeplane' do
  version '1.7.9'
  sha256 'c149f84ce2f2062b3552bd67ed58a6b3f68a6c2ef530aaf54c3aac60452b3ad3'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
