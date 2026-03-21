cask "font-big-shoulders-stencil-text-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersstenciltextsc/BigShouldersStencilTextSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Stencil Text SC"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Stencil+Text+SC"

  font "BigShouldersStencilTextSC[wght].ttf"

  # No zap stanza required
end
