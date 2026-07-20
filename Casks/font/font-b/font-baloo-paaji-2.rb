cask "font-baloo-paaji-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloopaaji2/BalooPaaji2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Paaji 2"
  homepage "https://fonts.google.com/specimen/Baloo+Paaji+2"

  font "BalooPaaji2[wght].ttf"

  # No zap stanza required
end
