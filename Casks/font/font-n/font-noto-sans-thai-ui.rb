cask "font-noto-sans-thai-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansthaiui/NotoSansThaiUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Thai UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Thai+UI"

  font "NotoSansThaiUI[wdth,wght].ttf"

  # No zap stanza required
end
