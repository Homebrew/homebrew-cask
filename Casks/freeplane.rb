cask 'freeplane' do
  version '1.7.10'
  sha256 'cac455f5a930edf81199dd11df46da12d5171a7019d35f44f230995f28f4de63'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
