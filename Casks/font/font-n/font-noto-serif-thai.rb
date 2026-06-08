cask "font-noto-serif-thai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifthai/NotoSerifThai%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Thai"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Thai"

  font "NotoSerifThai[wdth,wght].ttf"

  # No zap stanza required
end
