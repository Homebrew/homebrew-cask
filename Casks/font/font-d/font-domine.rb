cask "font-domine" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/domine/Domine%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Domine"
  homepage "https://fonts.google.com/specimen/Domine"

  font "Domine[wght].ttf"

  # No zap stanza required
end
