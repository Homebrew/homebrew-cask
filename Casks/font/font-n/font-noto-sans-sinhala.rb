cask "font-noto-sans-sinhala" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssinhala/NotoSansSinhala%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sinhala"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sinhala"

  font "NotoSansSinhala[wdth,wght].ttf"

  # No zap stanza required
end
