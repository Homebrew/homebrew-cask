cask "font-maiden-orange" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/maidenorange/MaidenOrange-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Maiden Orange"
  desc "Light and festive slab serif font inspired by custom hand lettered 1950s advertisements"
  homepage "https://fonts.google.com/specimen/Maiden+Orange"

  font "MaidenOrange-Regular.ttf"

  # No zap stanza required
end
