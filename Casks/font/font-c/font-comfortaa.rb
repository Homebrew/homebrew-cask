cask "font-comfortaa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comfortaa/Comfortaa%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Comfortaa"
  homepage "https://fonts.google.com/specimen/Comfortaa"

  font "Comfortaa[wght].ttf"

  # No zap stanza required
end
