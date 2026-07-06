cask "font-saikanji-contrast-light-solid-nogrid" do
  version "0.020"
  sha256 "2f1b85ac63eb9cc270a454640c2cf1f4e6e0f154a122f620319694cc0ba578e2"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Solid No Grid"
  desc "Light Contrast variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Solid.ttf"
  # No zap stanza required
end
