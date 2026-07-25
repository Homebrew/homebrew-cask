cask "font-baloo-da-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/balooda2/BalooDa2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Da 2"
  homepage "https://fonts.google.com/specimen/Baloo+Da+2"

  font "BalooDa2[wght].ttf"

  # No zap stanza required
end
