cask "font-buenard" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/buenard/Buenard%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Buenard"
  homepage "https://fonts.google.com/specimen/Buenard"

  font "Buenard[wght].ttf"

  # No zap stanza required
end
