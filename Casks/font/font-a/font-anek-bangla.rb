cask "font-anek-bangla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekbangla/AnekBangla%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Bangla"
  homepage "https://fonts.google.com/specimen/Anek+Bangla"

  font "AnekBangla[wdth,wght].ttf"

  # No zap stanza required
end
