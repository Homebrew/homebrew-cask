cask "font-baloo-tammudu-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/balootammudu2/BalooTammudu2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Tammudu 2"
  homepage "https://fonts.google.com/specimen/Baloo+Tammudu+2"

  font "BalooTammudu2[wght].ttf"

  # No zap stanza required
end
