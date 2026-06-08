cask "font-parastoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parastoo/Parastoo%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Parastoo"
  homepage "https://fonts.google.com/specimen/Parastoo"

  font "Parastoo[wght].ttf"

  # No zap stanza required
end
