cask 'freeplane' do
  version '1.7.11'
  sha256 'eaae4622cb27d7c26e0facd10c87eb9f26e0e5b8082e0642154d049eaaadc1d1'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
