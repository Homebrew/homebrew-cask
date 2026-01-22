cask "font-noto-serif-khmer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkhmer/NotoSerifKhmer%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Khmer"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Khmer"

  font "NotoSerifKhmer[wdth,wght].ttf"

  # No zap stanza required
end
