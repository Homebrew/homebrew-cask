cask "font-saikanji-balanced-solid-nogrid" do
  version "0.020"
  sha256 "4d9147023c2892d5ff713e032d2510b7032bd7c74852de65a4c4044587dc7b2f"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Solid No Grid"
  desc "Regular Balanced variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Solid.ttf"
  # No zap stanza required
end
