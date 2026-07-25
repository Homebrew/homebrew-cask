cask "font-noto-serif-georgian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifgeorgian/NotoSerifGeorgian%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Georgian"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Georgian"

  font "NotoSerifGeorgian[wdth,wght].ttf"

  # No zap stanza required
end
