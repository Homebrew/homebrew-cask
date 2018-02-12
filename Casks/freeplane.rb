cask 'freeplane' do
  version '1.6.13'
  sha256 '21fea08960f65be82a005998b11e294dfa505245ebb686a10ff1dc804f8c11d2'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: 'ebceb77339cd382a5ea45fd5753271c75d66b24eef65622ddf3ca2c539824cda'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
