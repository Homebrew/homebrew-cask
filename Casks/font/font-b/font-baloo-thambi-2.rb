cask "font-baloo-thambi-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloothambi2/BalooThambi2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Thambi 2"
  homepage "https://fonts.google.com/specimen/Baloo+Thambi+2"

  font "BalooThambi2[wght].ttf"

  # No zap stanza required
end
