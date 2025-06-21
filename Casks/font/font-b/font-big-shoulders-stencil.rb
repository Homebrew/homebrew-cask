cask "font-big-shoulders-stencil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersstencil/BigShouldersStencil%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Stencil"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Stencil"

  font "BigShouldersStencil[opsz,wght].ttf"

  # No zap stanza required
end
