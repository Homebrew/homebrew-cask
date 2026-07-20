cask "font-noto-sans-tamil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstamil/NotoSansTamil%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tamil"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tamil"

  font "NotoSansTamil[wdth,wght].ttf"

  # No zap stanza required
end
