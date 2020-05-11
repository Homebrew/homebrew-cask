cask 'freeplane' do
  version '1.8.3'
  sha256 '26bb9585d8de3005785bd755fe659649b2ea6bddcd6bb9c423b440b3cda0e20a'

  # downloads.sourceforge.net/freeplane/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
