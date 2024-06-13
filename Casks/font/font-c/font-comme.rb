cask "font-comme" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comme/Comme%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Comme"
  homepage "https://fonts.google.com/specimen/Comme"

  font "Comme[wght].ttf"

  # No zap stanza required
end
