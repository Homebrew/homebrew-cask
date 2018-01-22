cask 'gislook' do
  version :latest
  sha256 :no_check

  url 'http://www.cartography.oregonstate.edu/gislook/GISLook_GISMeta.pkg'
  name 'GISLook'
  homepage 'http://www.cartography.oregonstate.edu/GISLook.html'

  depends_on macos: '>= :leopard'

  pkg 'GISLook_GISMeta.pkg'

  uninstall pkgutil: [
                       'ch.bernhardjenny.gislook.pkg',
                       'ch.bernhardjenny.gismeta.pkg',
                     ]
end
