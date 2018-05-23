cask 'freeplane' do
  version '1.6.14'
  sha256 'e3449f844ed157bcc58ea8082b75c114085aa9802320b2c1fee398c10c5d276e'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '7e7e3edcb806732cf8519efc7cf76f5b3a6cd416886f281785f79a4ebcb86b72'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
