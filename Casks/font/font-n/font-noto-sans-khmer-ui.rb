cask "font-noto-sans-khmer-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskhmerui/NotoSansKhmerUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Khmer UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Khmer+UI"

  font "NotoSansKhmerUI[wdth,wght].ttf"

  # No zap stanza required
end
