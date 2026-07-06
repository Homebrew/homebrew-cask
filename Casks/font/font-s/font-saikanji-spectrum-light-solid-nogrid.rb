cask "font-saikanji-spectrum-light-solid-nogrid" do
  version "0.020"
  sha256 "7fd15a526406955ee8f92de856261431e901b322044fe2ac9c45b7bb6e543956"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Solid No Grid"
  desc "Light Spectrum variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Solid.ttf"
  # No zap stanza required
end
