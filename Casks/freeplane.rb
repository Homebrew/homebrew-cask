cask 'freeplane' do
  version '1.5.21'
  sha256 '666375b683378e535c86b464545f52c0dcffb75b3d82a0863350eafdb9f5e350'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '98f2b4ff1a0f17110621a5ab1d7a34da8057df4918f48e2f88a98bcec4635a49'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
