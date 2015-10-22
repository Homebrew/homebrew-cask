cask :v1 => 'macintosh-explorer' do
  version :latest
  sha256 :no_check

  url 'http://www.ragesw.com/downloads/ragesw/mac_explorer_alt.dmg'
  name 'Macintosh Explorer'
  homepage 'http://www.ragesw.com/products/explorer.html'
  license :gratis

  app 'Macintosh Explorer.app'
end
