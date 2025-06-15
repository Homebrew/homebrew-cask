cask "font-matangi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/matangi/Matangi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Matangi"
  homepage "https://fonts.google.com/specimen/Matangi"

  font "Matangi[wght].ttf"

  # No zap stanza required
end
