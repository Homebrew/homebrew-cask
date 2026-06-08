cask "font-noto-rashi-hebrew" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notorashihebrew/NotoRashiHebrew%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Rashi Hebrew"
  homepage "https://fonts.google.com/specimen/Noto+Rashi+Hebrew"

  font "NotoRashiHebrew[wght].ttf"

  # No zap stanza required
end
