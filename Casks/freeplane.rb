cask 'freeplane' do
  version '1.7.3'
  sha256 'd993a3cc472dc4d1c50715fa4d63da93b1ef54712cfd4e13fadb793d666a0374'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
