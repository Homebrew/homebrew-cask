cask "font-big-shoulders-stencil-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersstencildisplay/BigShouldersStencilDisplay%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Stencil Display"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Stencil+Display"

  font "BigShouldersStencilDisplay[wght].ttf"

  # No zap stanza required
end
