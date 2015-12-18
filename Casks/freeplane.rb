cask 'freeplane' do
  version '1.3.15'
  sha256 '0a684fa354fe39051cc12af91b78d0acb0eb7279d6bb3fe4da21aba6d7b7de1d'

  url "http://downloads.sourceforge.net/project/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'
  license :gpl

  app 'Freeplane.app'
end
