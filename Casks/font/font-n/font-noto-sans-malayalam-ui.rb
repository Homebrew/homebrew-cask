cask "font-noto-sans-malayalam-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmalayalamui/NotoSansMalayalamUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Malayalam UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Malayalam+UI"

  font "NotoSansMalayalamUI[wdth,wght].ttf"

  # No zap stanza required
end
