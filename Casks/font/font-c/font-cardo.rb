cask "font-cardo" do
  version "1.04"
  sha256 "9401db6357cb71fa1f8791323679f81d6b0473d6280a7ec8abdf11b5e52f455f"

  url "https://scholarsfonts.net/cardo#{version.no_dots}.zip"
  name "Cardo"
  homepage "https://scholarsfonts.net/cardofnt.html"

  font "Cardo104s.ttf"
  font "Cardoi99.ttf"
  font "Cardob101.ttf"

  # No zap stanza required
end
