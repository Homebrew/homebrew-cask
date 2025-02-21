cask "font-big-shoulders-stencil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersstencil/BigShouldersStencil%5Bopsz%2Cwght%5D.ttf"
  name "Big Shoulders Stencil"
  homepage "https://github.com/xotypeco/big_shoulders"

  font "BigShouldersStencil[opsz,wght].ttf"

  # No zap stanza required
end
