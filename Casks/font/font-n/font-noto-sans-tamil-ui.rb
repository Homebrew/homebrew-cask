cask "font-noto-sans-tamil-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstamilui/NotoSansTamilUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tamil UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tamil+UI"

  font "NotoSansTamilUI[wdth,wght].ttf"

  # No zap stanza required
end
