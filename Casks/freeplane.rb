cask 'freeplane' do
  version '1.6.15'
  sha256 '79e506a9a6cf3f29471aeaba576c37998c251a3647eb3d9db84c014b1a00a784'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
