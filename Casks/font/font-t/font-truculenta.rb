cask "font-truculenta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/truculenta/Truculenta%5Bopsz%2Cwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Truculenta"
  homepage "https://fonts.google.com/specimen/Truculenta"

  font "Truculenta[opsz,wdth,wght].ttf"

  # No zap stanza required
end
