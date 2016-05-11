cask 'gislook' do
  version '1.0.2'
  sha256 'ac1e8a48bce216b17d573783a647cac2fb06a20c6c002ea45f7439341a0a10a1'

  url 'http://cartography.oregonstate.edu/gislook/GISLook_GISMeta.pkg'
  name 'GISLook'
  homepage 'http://cartography.oregonstate.edu/GISLook.html'
  license :other

  pkg 'GISLook_GISMeta.pkg'

  uninstall pkgutil: [
             'ch.bernhardjenny.gislook.pkg',
             'ch.bernhardjenny.gismeta.pkg',
           ]
end
