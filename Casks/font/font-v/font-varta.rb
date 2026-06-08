cask "font-varta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/varta/Varta%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Varta"
  homepage "https://fonts.google.com/specimen/Varta"

  font "Varta[wght].ttf"

  # No zap stanza required
end
