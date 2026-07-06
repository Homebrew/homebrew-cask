cask "font-saikanji-spectrum-light-gradient-grid" do
  version "0.020"
  sha256 "5b5e9fc1ab346b1b226696605e0d5682f26a869a3b549b2b1e10d8c10baa433d"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Gradient Grid"
  desc "Light Spectrum variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Gradient.Grid.ttf"
end
