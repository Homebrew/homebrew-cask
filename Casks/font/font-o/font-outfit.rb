cask "font-outfit" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/outfit/Outfit%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Outfit"
  homepage "https://fonts.google.com/specimen/Outfit"

  font "Outfit[wght].ttf"

  # No zap stanza required
end
