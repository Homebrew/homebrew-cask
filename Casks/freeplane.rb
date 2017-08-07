cask 'freeplane' do
  version '1.6.3'
  sha256 '0bfb46c67ba83ab330e4b61f4bc0092669ff023b9d091baf42ed27deaeda4f37'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: 'e4e395faaf9ab2d5019e1233b77ed3aff7653e2dca35d67e4bce0c499740107d'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
