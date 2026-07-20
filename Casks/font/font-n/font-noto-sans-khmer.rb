cask "font-noto-sans-khmer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskhmer/NotoSansKhmer%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Khmer"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Khmer"

  font "NotoSansKhmer[wdth,wght].ttf"

  # No zap stanza required
end
