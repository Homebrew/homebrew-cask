cask 'freeplane' do
  version '1.3.15'
  sha256 '0a684fa354fe39051cc12af91b78d0acb0eb7279d6bb3fe4da21aba6d7b7de1d'

  url "https://downloads.sourceforge.net/project/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss',
          checkpoint: '3bd1c60ddc9c38e2db38adbe8d55cf133a62b2f34deaf2681a9c958a4b8f5d82'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'
  license :gpl

  app 'Freeplane.app'
end
