cask "font-noto-emoji" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoemoji/NotoEmoji%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Emoji"
  homepage "https://fonts.google.com/specimen/Noto+Emoji"

  font "NotoEmoji[wght].ttf"

  # No zap stanza required
end
