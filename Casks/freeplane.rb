cask 'freeplane' do
  version '1.7.2'
  sha256 'a4ef6de04d1c6a9bdac116643b90d7141cfa6e60541c72a469fc59ad368ffde9'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
