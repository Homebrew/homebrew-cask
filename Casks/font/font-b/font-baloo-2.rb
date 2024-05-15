cask "font-baloo-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloo2/Baloo2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo 2"
  homepage "https://fonts.google.com/specimen/Baloo+2"

  font "Baloo2[wght].ttf"

  # No zap stanza required
end
