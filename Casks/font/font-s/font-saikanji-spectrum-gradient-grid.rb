cask "font-saikanji-spectrum-gradient-grid" do
  version "0.020"
  sha256 "4e5866afa36cdf65776efa5d9e73ee0320d85e76047c9a33d5fb5b2f93fd75dd"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Gradient Grid"
  desc "Regular Spectrum variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Gradient.Grid.ttf"
  # No zap stanza required
end
