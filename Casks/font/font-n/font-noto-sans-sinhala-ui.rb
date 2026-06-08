cask "font-noto-sans-sinhala-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssinhalaui/NotoSansSinhalaUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sinhala UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sinhala+UI"

  font "NotoSansSinhalaUI[wdth,wght].ttf"

  # No zap stanza required
end
