cask "font-saikanji-regular-light-solid-grid" do
  version "0.020"
  sha256 "561b8cde47a0952690648c2f296393907b24b2ee2e5cafe7a0685c203206f07b"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Solid Grid"
  desc "Light Regular variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Solid.Grid.ttf"
  # No zap stanza required
end
