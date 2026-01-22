cask "font-noto-serif-armenian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifarmenian/NotoSerifArmenian%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Armenian"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Armenian"

  font "NotoSerifArmenian[wdth,wght].ttf"

  # No zap stanza required
end
