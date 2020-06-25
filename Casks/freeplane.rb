cask 'freeplane' do
  version '1.8.6'
  sha256 '72cbc35735f8e67023a254696b59b32ecd56b18a199d170fe66a00b422bc24b5'

  # downloads.sourceforge.net/freeplane/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
