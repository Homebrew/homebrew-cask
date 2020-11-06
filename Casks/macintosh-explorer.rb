cask "macintosh-explorer" do
  version :latest
  sha256 :no_check

  url "https://www.ragesw.com/downloads/ragesw/mac_explorer_alt.dmg"
  name "Macintosh Explorer"
  homepage "https://www.ragesw.com/products/explorer.html"

  depends_on macos: "<= :mojave"

  app "Macintosh Explorer.app"

  caveats do
    discontinued
    free_license "https://www.ragesw.com/products/discontinued.php?product=explorer"
  end
end
