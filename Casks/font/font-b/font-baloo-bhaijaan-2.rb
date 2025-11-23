cask "font-baloo-bhaijaan-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloobhaijaan2/BalooBhaijaan2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Bhaijaan 2"
  homepage "https://fonts.google.com/specimen/Baloo+Bhaijaan+2"

  font "BalooBhaijaan2[wght].ttf"

  # No zap stanza required
end
