cask 'freeplane' do
  version '1.7.5-hotfix1'
  sha256 '3095b390a2ffd0d8a9466d18e983f90a8e603c44839da5394ac96d99f4a91102'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
