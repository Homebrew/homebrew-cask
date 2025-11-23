cask "font-baloo-bhaina-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloobhaina2/BalooBhaina2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Bhaina 2"
  homepage "https://fonts.google.com/specimen/Baloo+Bhaina+2"

  font "BalooBhaina2[wght].ttf"

  # No zap stanza required
end
