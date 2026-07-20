cask "font-kalnia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kalnia/Kalnia%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kalnia"
  homepage "https://fonts.google.com/specimen/Kalnia"

  font "Kalnia[wdth,wght].ttf"

  # No zap stanza required
end
