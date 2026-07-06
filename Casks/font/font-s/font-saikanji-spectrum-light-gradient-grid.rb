cask "font-saikanji-spectrum-light-gradient-grid" do
  version "0.020"
  sha256 "d07e197bc7c167e5d980fbe4238c8e076e2248459b94ae60494a32a41865e4f9"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Gradient Grid"
  desc "Light Spectrum variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Gradient.Grid.ttf"
  # No zap stanza required
end
