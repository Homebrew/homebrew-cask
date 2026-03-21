cask "font-big-shoulders-stencil-display-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersstencildisplaysc/BigShouldersStencilDisplaySC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Stencil Display SC"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Stencil+Display+SC"

  font "BigShouldersStencilDisplaySC[wght].ttf"

  # No zap stanza required
end
