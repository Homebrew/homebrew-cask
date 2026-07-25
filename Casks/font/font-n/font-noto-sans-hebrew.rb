cask "font-noto-sans-hebrew" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshebrew/NotoSansHebrew%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Hebrew"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Hebrew"

  font "NotoSansHebrew[wdth,wght].ttf"

  # No zap stanza required
end
