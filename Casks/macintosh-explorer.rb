cask :v1 => 'macintosh-explorer' do
  version :latest
  sha256 :no_check

  url 'http://www.ragesw.com/downloads/ragesw/mac_explorer_alt.dmg'
  homepage 'http://www.ragesw.com/products/explorer.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Macintosh Explorer.app'
end
