cask 'freeplane' do
  version '1.5.21'
  sha256 'c5962df33a6d8d7ae60dc68d17f9903f0fb90fb6dbf5dc45d52c4442a7e6377b'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '2c56cb6782167d26122ebffbfb42dc58c40c665052178439f5f32e48bb0364cc'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
