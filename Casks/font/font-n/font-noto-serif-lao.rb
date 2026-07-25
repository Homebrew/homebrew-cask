cask "font-noto-serif-lao" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriflao/NotoSerifLao%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Lao"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Lao"

  font "NotoSerifLao[wdth,wght].ttf"

  # No zap stanza required
end
