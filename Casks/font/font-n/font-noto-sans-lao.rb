cask "font-noto-sans-lao" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslao/NotoSansLao%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lao"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lao"

  font "NotoSansLao[wdth,wght].ttf"

  # No zap stanza required
end
