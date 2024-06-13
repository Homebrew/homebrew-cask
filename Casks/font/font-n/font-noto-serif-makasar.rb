cask "font-noto-serif-makasar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifmakasar/NotoSerifMakasar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Makasar"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Makasar"

  font "NotoSerifMakasar-Regular.ttf"

  # No zap stanza required
end
