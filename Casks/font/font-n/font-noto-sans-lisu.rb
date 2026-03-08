cask "font-noto-sans-lisu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslisu/NotoSansLisu%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lisu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lisu"

  font "NotoSansLisu[wght].ttf"

  # No zap stanza required
end
