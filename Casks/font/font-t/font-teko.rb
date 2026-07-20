cask "font-teko" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/teko/Teko%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Teko"
  homepage "https://fonts.google.com/specimen/Teko"

  font "Teko[wght].ttf"

  # No zap stanza required
end
