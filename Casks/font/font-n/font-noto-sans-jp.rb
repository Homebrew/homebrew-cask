cask "font-noto-sans-jp" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansjp/NotoSansJP%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans JP"
  homepage "https://fonts.google.com/specimen/Noto+Sans+JP"

  font "NotoSansJP[wght].ttf"

  # No zap stanza required
end
